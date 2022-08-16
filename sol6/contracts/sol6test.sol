pragma solidity ^0.8.3;

contract Instructor{
    
    struct info {
        uint amountpaid;
        uint amount_expected_to_be_paid;
        bool registered_or_not;
    }
    mapping(address=> info) store;
    
    function AddMemory() public payable{
        info memory temp=store[msg.sender];
      temp.amountpaid=msg.value;
      //storing in storage
      store[msg.sender]=temp;
    }
    //data in storage dont get wiped out
    function AddStorage() public payable{
        info storage temp1=store[msg.sender];
        temp1.amountpaid+=msg.value;
        
    }
    
    function checkValueInethe() public  view returns(uint toPay,uint Paid){
        info memory temp=store[msg.sender];
        toPay=temp.amountpaid+ 100;
        Paid =temp.amount_expected_to_be_paid;
     return (toPay,Paid);
    }
}


//whoever is calling this method its data will be stored in memory called
//structor info
//we are trying to pay/send  ether tthis function AddMemory
// and values are being stored in memory and not storage
//so it wipes out   
//so when check value is done it is wiped 