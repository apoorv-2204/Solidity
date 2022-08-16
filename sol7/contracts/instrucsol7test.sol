// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.3;

contract InstructorTest{
    address creator;//fucntion caller address
    string name;
    uint  age;
    event InstructorEvent(string name, uint age);
    
    constructor() 
    {
        creator = msg.sender;//this dont wokr
    }
    
    
    function set(string memory _name,uint _age) public{
        name=_name;
        age=_age;
      emit InstructorEvent(_name ,_age);
    }
    /*
    function get() public view returns(address _creator,string memory _name, uint _age){
        return (creator,name,age);
    }*/
    
        
}

//events are logs on ethereum blockchain
//action to which has been perfroemed on eth blockchain is event they are stored 
//as logs
//get method can be dissolved with the use of event
//blockchain is only append data
//event is evm logging machine//
//events are loggin facility on evm
