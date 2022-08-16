pragma solidity ^0.8.3;//instruction to compiler


contract Sol2Contract{//contact oriented
    uint x;//unsigned integer

    function set(uint _x) public {
        x = _x;
    }
                                        
    function get()  public view returns (uint){
        return x;
    }  //for reading invovles no gas
    
}
//everything is a transaction on eth even storing a variable
//uint 8 bit 16 bit uint 256 