// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.3;

contract InstructorTest{
    address creator;
    
    struct Instructor{//custom defined data type that group variabel;s
        string fname;
        string lname;
        uint  age;
    }
    
    mapping(address => Instructor) instructorMap;
    //key value pair addresss corresponds to a single instriuctor
    //key and address  hash of the public keusafe ,and coliision free
    //every instriuctor has fname,lnameage, and addres
    //unique id for instructor
    
    
    address[] public instructorAdd;//dynamic array
    //array of address
    
    constructor() 
    {
        creator = msg.sender;
    }
    //"0x5B38Da6a701c568545dCfcB03FcB875f56beddC4","hello","nan",4
    //"0x33fb056bc12bff84936370443f96f7f2cae63bd8","cvlwb","nan",4
    //"0x1aE0EA34a72D944a8C7603FfB3eC30a6669E454C","mate","ktnan",4
function setInstructor(address  _address,string memory fname,
string memory lname,uint age)  public  {
    
        Instructor memory a =instructorMap[_address];
        
        a.fname=fname;
        a.lname=lname;
        a.age=age;
        
        instructorAdd.push(_address);
    }
    
    function getInstructoraddress() public view returns(address[] memory _instructorAdd){
        
        return _instructorAdd = instructorAdd;
    }
    
    function getInstructor(address _address) public view  returns(string memory _fname,string memory _lname ,uint _age){
        _fname=instructorMap[_address].fname;
        _lname=instructorMap[_address].lname;
        _age=instructorMap[_address].age;
        
        return (_fname , _lname,_age);
    }
    
}
/*//memory tells solidity to create a chunk of space for the variable 
at method runtime, guaranteeing its size and structure for 
future use in that method. memory cannot be used at the contract 
level. ... Every contract has its own 
storage and it is persistent between function calls and quite expensive to use.

*/