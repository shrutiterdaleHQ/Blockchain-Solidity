This is introduction and basics of solidity

//SPDX-License-Identifier:MIT

Try to include license otherwise compiler gives an error, mostly it is because most of the times blockchain public contracts are used for public blockchains, 

pragma solidity ^0.8.17;


This project includes following: 



This project includes following: 


Blockchain Basics
 Data Types in Solidity - bool, int, uint(uint256- unsignes integer), string , bytes(e.g. bytes11), structure, array, mapping 
	
Visibility specifiers: It tells who can access variables and functions. From where functions and variables can be accessed 

There are 4 specifiers : Public, Private, internal , external    

    Public: Accessible from anywhere (same contract, derived contract, other contracts, external users(Transactions)     
     Private: Accessible inside the same contract only 
    Internal: Inside same contract and derived contract 
    External: Only for external users and Other contracts. Cheaper than public for external calls


Deploy contract on testnet 
Deploy contract from contract
Memory type
Importing contracts
Inheriting the contracts (using keyword is)
Function override (add virtual keyword in the base class)
