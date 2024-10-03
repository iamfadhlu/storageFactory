// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract SimpleStorage {

    struct Person{
        uint256 favorite_num;
        string name;
    }

    uint256 myFavorite;
    mapping (string name => uint256 favorite_num) public nameToFavnum;

    Person[] public listOfpeople;

    function store (uint256 favnum) public virtual {
        myFavorite = favnum;
    }

    function retrieve() public view returns(uint256){
        return myFavorite;
    }

    function addPerson(string memory _name, uint256 _favnumber) public {
        listOfpeople.push(Person(_favnumber, _name));
        nameToFavnum[_name] = _favnumber; 
    }
}