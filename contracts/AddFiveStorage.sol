// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    function store(uint256 _favNum) public override {
        myFavNum = _favNum + 5;
    }
}