// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import{SimpleFirstContract} from './SimpleStorage.sol';

contract AddTenStorage is SimpleFirstContract //inheritance 
{
    function addTen(uint ten) public pure returns(uint)  {
        return ten;
    }

    function store(uint addThisNumber) public override{
        //add mentioned number
        //in base class mention virtual(can be overriden)
        //in clild class mention override
        intNumber=  intNumber + addThisNumber;
    }
}

