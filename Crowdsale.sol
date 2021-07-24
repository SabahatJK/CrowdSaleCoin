pragma solidity ^0.5.0;

import "./PupperCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/validation/TimedCrowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/distribution/RefundablePostDeliveryCrowdsale.sol";

// @TODO: Inherit the crowdsale contracts
contract PupperCoinSale is Crowdsale, MintedCrowdsale, CappedCrowdsale, TimedCrowdsale, RefundablePostDeliveryCrowdsale{

constructor(
        uint rate, // rate in TKNbits
        address payable wallet, // sale beneficiary
        PupperCoin token, // the PupperCoin 
        uint256 cap,             // total cap, in wei
        uint256 openingTime,     // opening time in unix epoch seconds
        uint256 closingTime,     // closing time in unix epoch seconds
        uint256 goal             // the minimum goal, in wei
    )
        RefundableCrowdsale(goal) //RefundablePostDeliveryCrowdsale does not have a constructor, use parents', that adds a funding goal, and the possibility of users getting a refund if goal is not met.
        CappedCrowdsale(cap) //Crowdsale with a limit for total contributions (cap)
        TimedCrowdsale(openingTime, closingTime) //Crowdsale accepting contributions only within a time frame.
        Crowdsale(rate, wallet, token) // base contract for managing a token crowdsale, allowing investors to purchase tokens with ether

        
        public
    {
        // constructor can stay empty
    }
    
}

contract PupperCoinSaleDeployer {

    address public token_sale_address; //address of the corwdsale contract
    address public token_address; // address of the ERC20, PUP token

    constructor(
        string memory name, //name of token
        string memory symbol, //Symbol of Token
        address payable wallet // this address will receive all Ether raised by the sale
    )
        public
    {

        // create the PupperCoin and keep its address handy
        PupperCoin token = new PupperCoin(name, symbol, 0);
        token_address = address(token);

        uint256 goal = 300 ether;        
        uint256 cap = goal + 10 ether;
        uint256 duration = 24 hours;
        
        
        // create the PupperCoinSale and tell it about the token, set the goal, and set the open and close times to now and now + 24 weeks.
        PupperCoinSale pupperCoin_sale = new PupperCoinSale(1, wallet, token, cap, now , (now + duration), goal);
        token_sale_address = address(pupperCoin_sale);


        // make the PupperCoinSale contract a minter, then have the PupperCoinSaleDeployer renounce its minter role
        token.addMinter(token_sale_address);
        token.renounceMinter();
    }
}
