# CrowdSaleCoin

## Background
Crowdsales are the crowdfunding campaigns in the cryptocurrency world, where the digital currency platform sells the pre-mined crypto-tokens for the platform under development in exchange for either any coin,  be it bitcoin or ethereum or some other established digital currency. The funds raised are then used for further development of the platform.<sup>[[Blockchian-Council]](https://www.blockchain-council.org/blockchain/crowdsale-blockchain-how-works/#:~:text=Crowdsales%20are%20the%20crowdfunding%20campaigns%20in%20the%20cryptocurrency,then%20used%20for%20further%20development%20of%20the%20platform.)</sup>


Your company has decided to crowdsale their PupperCoin token in order to help fund the network development.
This network will be used to track the dog breeding activity across the globe in a decentralized way, and allow humans to track the genetic trail of their pets. You have already worked with the necessary legal bodies and have the green light on creating a crowdsale open to the public. However, you are required to enable refunds if the crowdsale is successful and the goal is met, and you are only allowed to raise a maximum of 300 Ether. The crowdsale will run for 24 weeks.

## Terms
Buyer : The wallet buying the tokens, the ether/wei will be deducted from thier wallet.

Beneficary: The wallet that will get the tokens bought by the buyer, the beneficary could be the buyer.


## Description

An ERC20 token named Pupercoin (Symbol PUP) is created that is minted through a `Crowdsale` contract.

This crowdsale contract manages the entire process, allowing users to send ETH and get back PUP (PupperCoin) for beneficiaries.  It mints the tokens automatically and distribute them to beneficiary in one transaction. The beneficiary could be the buyer as well.

The crowdsale has goal (300 Eth) up to a maximum of a cap,  invalidating any purchases that would exceed that cap. The cap is hardcoded at 10 ether more than the goal.

The crowdsale will run for a limited time period (24 Hrs). No one can contribute/purchase after the time period is up. The crowdsale will need to be finalized for the beneficies to be able to withdraw the tokens or get a refund. The crowdsale cannot be finalized until the time is up and it has closed.

The beneficary who own the tokens, cannot trade or widthraw the tokens until the crowdsale has closed and the goal is met, preventing refunds to be issued to token holders. This is because if you allow tokens to be traded before the goal is met, then an attack is possible in which the attacker purchases tokens from the crowdsale and when they sees that the goal is unlikely to be met, they sell their tokens (possibly at a discount). The attacker will be refunded when the crowdsale is finalized, and the users that purchased from them will be left with worthless tokens. 

Refunds are only allowed, once the crowdsale is closed and the goal is NOT met. 

### Deploy the Contracts
1. Deloy the PupperCoinSaleDeployer contract, enter the name of the COIN name, symbol, and wallet that the money will go to when the goal is met and the crowdsale finalizes. 
2. Once deployed, copy the token_sale_address and the token address.
3. In Remix, select the PupperCoinSale under contracts and put in the token_sale_address in the "At Address" field and click on the "At Address". This will load up the deployed PupperCoinSale contract in remix. Open the PupperCoinSale contract and purchase some PupCoin.



### Process for Purchasing Pupcoin
1. Change the account in metamask to some other account besides the one which created the contract or the wallet address entered while deploying.

2. Click on "buy Tokens" and enter the beneficiary, this could be same as account (buying tokens for oneself) or another account. Remember to enter the value, something in ether, so its easy to see in metamask and ganache.
3. Add the token to ganache and mycrypto, to see the account balance in our custom token.

4. 

Cap Reached
Goal Reached
Goal Not Reached




