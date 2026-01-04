**To deploy Contract:
**	
-Open project using Remix IDE
-files(contracts) will have .sol extensions. (Save files unders contracts folder)
	3.select compiler version to match pragma solidity version mentioned in the contract
	4.click compile button
	5.Click deploy button
	6. You can interact or add inputs using section deployed contracts

**Additional information: To deploy on testnet , Metamask can be used.
**- Connect metamask account to sepolia/other testnet
- use this account to connect to testnet
- Compile and then deploy- it will be deployed on the testnet
- Use terminal to get transaction hash , transfer hash etc. This can then be tracked on sepolia testnet.

----------------------
BASICS OF SOLIDITY:
---------------------

**//SPDX-License-Identifier: **MIT (Solidity compiler requires it in recent versions to reduce license warnings.)
**pragma solidity ^0.8.17;** A compiler directive that tells Solidity which compiler versions are allowed.


**Data Types in Solidity -
**	Value types-bool, int, uint(uint256- unsignes integer), address(can receive ETH) , bytes( bytes1...bytes32), enum 
	Reference Types - string , bytes (dynamic), structure, array, mapping 

**Variables**:
	State: Stored on chain
	Local: memory only
	Immutable and Constants:

**Storage Locations- storage, memory, calldata
**	storage: permanent storage, expensive , used for state variables (state variables are stored on chain)
	memory: temporary, cheaper, function variables
	calldata: temporora, read-only, cheapest, function inputs- like external


**FUNCTIONS:
**	function add(uint a, uint b) public pure returns (uint) {
	    return a + b;
	}
	
   Visibility specifiers: It tells who can access variables and functions. From where functions and variables can be accessed 
			There are 4 specifiers : Public, Private, internal , external    
			public: Accessible from anywhere (same contract, derived contract, other contracts, external users(Transactions)     
			Private: Accessible inside the same contract only 
			Internal: Inside same contract and derived contract 
			External: Only for external users and Other contracts. Cheaper than public for external calls
		
   Function modifires: These are keywords attached to function signature, that defines how function behaves with respect to state access, Ether handling, inheritance. 
   Core function modifiers - View , pure, payable, virtual, ovverride
			View: reads blockchain state, cant modify state variables
			Pure: Neither reads nor writes blockchain states , works only with local variables, or inputs 
				(function add(uint a, uint b) public pure returns (uint) {
		    		return a + b;
					}
			Payable: Allows function to receive Ether
			Override: Marks function as overriden. Used in child contracts to indicte that this child function has oveeriden parent function
			Virtual: Marks parent function- makes parent function as overridable in child contracts

  Constructors:
		Runs once at deployment
		

**Ether Units
**	1 wei
	1 gwei = 10^9 wei
	1 ether = 10^18 wei

**Receiving Eth
**	receive() external payable {}- simple ETH deposits (like a wallet)
	fallback() external payable {}- proxy contracts, logging, or handling unexpected calls
    Both receive() and fallback() are special functions that allow a contract to handle plain Ether transfers or calls that don’t match any other function.

**Global Objects provided by EVM:msg, tx, block globals 
**	Some of them are 
	msg.sender: (address) :Immediate caller
	msg.value : uint256 :  Wei sent with this call
	block.temestamp: Unix timestamp
	block.number: Current block number
	tx.origin: Original EOA that started the transaction
	tx.gasprice: Gas price paid


**Error Handling**
- Require: Condition check, require(balance >= amount, "Not enough balance"); Check something important. If it’s false, stop and refund remaining gas.Refunds unused gas.
- revert: Custom Error. Stop execution right now and explain why. revert("Transfer failed"); or custom error(cheaper)-error NotAuthorized();
- assert: Internal Error check. Check internal invariants .This should NEVER fail. If it does, something is seriously wrong.Consumes all remaining gas.Consumes all remaining gas


**Events and Emit
**	Events are logs that smart contracts can emit to signal that something happened.
	Smart contracts cannot directly return data to the outside world after deployment.Frontends, dApps, wallets, or off-chain services listen for events to know about changes.Events do not change contract storage.
	event Transfer(address indexed from, address indexed to, uint amount);
	emit Transfer(msg.sender, to, amount);

**Inheritance, Interface and abstract class: (Mental model courtesy - ChatGPT :))
**	Inheritance: I want all the parent’s code and state, maybe override some.
	Abstract contract: I have some code, but the rest must be completed by a child.
	Interface: I don’t care about code; I only care that the contract has these functions.


------------------------------------------------
**Gas Optimisation:
**	 Minimize storage writes
	 Use uint256
	 Cache state variables in memory
	 Prefer calldata over memory
	 Avoid unbounded loops
------------------------------------------------
Deploy contract on testnet (select testnet, use metamask and select testnet for the account, we used sepolia testnet. it requires mining, which might take some time.)
Deploy contract from contract
Importing contracts
------------------------------------------------

