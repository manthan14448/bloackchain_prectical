pragma solidity ^0.6.0;
contract SimpleStorage{
    uint256  favoriteNumber;
    bool favoriteBool;
 
    struct people
    {
        uint256 favoriteNumber;
        string name;
    }
 
    people[] public person;
   
   mapping(string => uint256)public nameTofavoriteNumber;
    function store(uint256 _favoriteNumber)public{
        favoriteNumber= _favoriteNumber;
    }
 
    //view or public
    function retrieve() public view returns(uint256){
      return favoriteNumber;
    }
 
    //array
    // u can use memory is faster or storage is slower
    function addperson(string memory _name,uint256 _favoriteNumber)public{
        person.push(people(_favoriteNumber,_name));
        nameTofavoriteNumber[_name]=_favoriteNumber;
    }
 
}
