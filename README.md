# CrowdSaleCoin

## Background
Crowdsales are the crowdfunding campaigns in the cryptocurrency world, where the digital currency platform sells the pre-mined crypto-tokens for the platform under development in exchange for either any coin,  be it bitcoin or ethereum or some other established digital currency. The funds raised are then used for further development of the platform.<sup>[[Blockchian-Council]](https://www.blockchain-council.org/blockchain/crowdsale-blockchain-how-works/#:~:text=Crowdsales%20are%20the%20crowdfunding%20campaigns%20in%20the%20cryptocurrency,then%20used%20for%20further%20development%20of%20the%20platform.)</sup>


Your company has decided to crowdsale their PupperCoin token in order to help fund the network development.
This network will be used to track the dog breeding activity across the globe in a decentralized way and allow humans to track the genetic trail of their pets. You have already worked with the necessary legal bodies and have the green light on creating a crowdsale open to the public. However, you are required to enable refunds if the crowdsale is successful and the goal is met, and you are only allowed to raise a maximum of 300 Ether. The crowdsale will run for 24 weeks.

## Terms
Buyer: The wallet buying the tokens, the ether/wei will be deducted from their wallet.

Beneficiary: The wallet that will get the tokens bought by the buyer; the beneficiary could be the buyer.


## Description

An ERC20 token named Pupercoin (Symbol PUP) is created that is minted through a `Crowdsale` contract.

This crowdsale contract manages the entire process, allowing users to send ETH and get back PUP (PupperCoin) for beneficiaries.  It mints the tokens automatically and distributes them to beneficiaries in one transaction. The beneficiary could be the buyer as well.

The crowdsale has a goal (300 Eth) up to a maximum of a cap,  invalidating any purchases that would exceed that cap. The cap is hardcoded at ten ether more than the goal.

The crowdsale will run for a limited time period (24 Hrs). No one can contribute/purchase after the time period is up. The crowdsale will need to be finalized for the beneficiaries to be able to withdraw the tokens or get a refund. The crowdsale cannot be finalized until the time is up and it has closed.

The beneficiary who owns the tokens cannot trade or withdraw the tokens until the crowdsale has closed and the goal is met, preventing refunds to be issued to token holders. This is because if you allow tokens to be traded before the goal is met, then an attack is possible in which the attacker purchases tokens from the crowdsale, and when they see that the goal is unlikely to be met, they sell their tokens (possibly at a discount). The attacker will be refunded when the crowdsale is finalized, and the users that purchased from them will be left with worthless tokens. 

Refunds are only allowed once the crowdsale is closed and the goal is NOT met. 

### Deploy the Contracts
1. Deloy the PupperCoinSaleDeployer contract, enter the name of the COIN name, symbol, and wallet that the money will go to when the goal is met and the crowdsale finalizes. 
2. Once deployed, copy the token_sale_address and the token address.
3. In Remix, select the PupperCoinSale under contracts and put in the token_sale_address in the "At Address" field, and click on the "At Address." This will load up the deployed PupperCoinSale contract in Remix. Open the PupperCoinSale contract and purchase some Puppercoin.

![Deploy the PuppercoinSale](./Screenshots/PupperCoinSale_deploy.gif)

### Buying Process
For the purpose of this document, the crowdsale was set up to run for 5-10 minutes, with a  goal of 50 to 300 ETH. Ganache was used to fund the accounts and metamask used with injectWeb3 in Remix.

#### Buy Puppercoin
1. Change the account in metamask to some other account besides the one who created the contract or the wallet address entered while deploying.

2. Enter the value in ETH (for quick verification), Dropdown "buy Tokens," and enter the beneficiary; this could be the same as an account (buying tokens for oneself) or another account. Click on buyToken button. This will pop up metamask, confirm the amount and click on confirm.

3. Check the balance of the address of the beneficiary to confirm it has received the tokens.

4. Verify the Wei raised by clicking on WeiRaised.


4. Go over steps 1-3 for purchasing puppercoins again until the crowdsale time is up, or the cap has been reached.

![Buy Puppercoin](./Screenshots/PupperCoinSale_cap_met.gif)

#### Finalize
1. Once the time is up, the crowdsale can be finalized. This ends the sale, and the funds can either be withdrawn in case the goal was met or refunded in case the goal was not met. Just click on finalize.

#### Withdraw Tokens
If the goal is met, the sale can be finalized.
2. After finalization, the funds can be withdrawn.

1. First, add the token to any beneficiary's account. 

2. Then, enter the address of the beneficiary in the withdrawal function. Click withdrawTokens; this will popup Metamask. Confirm the transaction.

3. Check that the beneficiary has received the Puppercoins in the assets.

4. Verify that the balance went down to 0 for the beneficiary by entering the address and clicking balance.

4. If you try to withdraw Puppercoins for an address that has none, it displays an error.

![Finalize and Withdrwal](./Screenshots/PupperCoinSale_cap_met.gif)

#### Claim Refund

If the goal is not met and the sale has been finalized, the buyers are eligible for a refund.

1. Enter the address of the buyer in the refund and click on the Claim Refund. This will return the eth back to the buyer.

![Finalize and Refund](./Screenshots/PupperCoinSale_refund.gif)

