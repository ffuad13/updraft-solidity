// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage {
    uint256 myFavNum;

    struct Person {
        string name;
        uint256 favNum;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public nameToFavNumber;

    function store(uint256 _favNum) public virtual {
        myFavNum = _favNum;
    }

    function retrieve() public view returns(uint256) {
        return myFavNum;
    }

    function addPerson(string memory _name, uint256 _favNum) public {
        listOfPeople.push(Person(_name, _favNum));
        nameToFavNumber[_name] = _favNum;
    }
}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}