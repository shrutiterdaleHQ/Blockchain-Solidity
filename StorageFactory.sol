// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import {SimpleFirstContract} from './SimpleStorage.sol';


contract StorageFactory{
//create variable of type contract - nameof the contract - visibilityy(public private etc)- contract name

    SimpleFirstContract public nameOfTypeContractSimple;

    function callContractFromOtherContract () public {
        nameOfTypeContractSimple = new SimpleFirstContract();
    }


}