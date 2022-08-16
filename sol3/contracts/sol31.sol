pragma solidity ^0.8.3;


contract sol3helloworld {
    
    string x;

    
    constructor (string memory _str)    
     {  
        x =  _str;
    }
    
    function set(string memory _x) public{ //View functions ensure that they will not modify the state. A function can be declared as view.
        x=_x;
    }
    
    function greet() view public returns(string memory){
        return x;
    }
    
}

  //same name as contract constructor //constructor executed only once during deployemnt of contract
  
  //sert requires string inn ""