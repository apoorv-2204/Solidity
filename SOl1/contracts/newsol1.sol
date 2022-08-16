pragma soldidity ^0.7.0;
//contact get executed etherum blockchain its like a microservice and public
contract MyContract {
    //This variable of the contract will be stored on blockchain in storage ,value to it writing a data to blockchain    //statically typed language

        string value ;//this entire contract canaccces it
        //value store in blockchain;
        function get() public view returns(string){//public means it can be alled my anyone who has acces to the contract
            return value;
        }        
        function set(string _value) public {//define type of data to be accepted as pararmeter
            value=_value;
            
        }//anyonr can set the va;lue of string _ to differentiate between contract var and local var
}