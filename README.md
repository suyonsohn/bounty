# To deploy this smart contract on the testnet, please follow the steps below.
1. Open up `Bounty.sol` on https://remix.ethereum.org
2. Go to the `Compile` tab. Select `0.4.25` as your compiler version.
3. Check `Auto compile`.
4. Go to the `Run` tab. For `Environment`, select `JavaScript VM`.
5. In `Account`, choose one of the 5 test accounts and click the `Copy value to clipboard` icon next to the address. Paste that copied address to the constructor address value field (next to the `Deploy` button) in order to set the winner's address.
6. Switch to another address in `Account`. This will be the address of the owner.
7. Click `Deploy`.

## Once the Bounty contract is successfully deployed, we can use `reward` and `withdrawReward` functions.

### To use the `reward` function,
1. Enter the `Value`(`0.1` and `ether`).
2. In `Deployed Contracts`, click `reward`. You should be able to see that the owner's balance has been updated.
### Now the winner can withdraw the funds.
3. In `Account`, switch to the winner's address of your choice earlier. 
4. In `Deployed Contracts`, click `withdrawReward`. You will see the winner's balance has been increased.