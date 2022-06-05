// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;
contract SimpleStorage{
    //this will be initialized as 0!
    uint256 favNumber;
    bool favouriteBool;
    // string favString = "string";
    // address favaddress = 0x68159592a71CCb25683C4392F38e0218f296a42b;
    struct People {
        uint256 favNumber;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public nameTofavNumber;


    function store(uint256 _favNumber) public{
        favNumber = _favNumber;
    }
    function retrieve() public view returns(uint256){
        return favNumber;
    }
    function addPerson(string memory _name, uint256 _favNumber) public {
            people.push(People(_favNumber,_name));
            nameTofavNumber[_name] = _favNumber;

    }

} 