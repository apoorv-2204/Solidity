pragma solidity 0.8.3;

contract Transaction{
    event senderLog(address);
    event valueLog(uint);
    event currentBlock(uint);//unix time seconds after jan 1970
    event gasPriceofTx(uint);
    event Blocknumber(uint);
    event minerAddress(address);
    
    
    address public creator;
    constructor(){
        creator=msg.sender;
    }
    

    
    modifier onlyOwner(){
        require(msg.sender==creator);
        _;
    }
    
    modifier valid(){
        //assert if this transaction fails/condition fgails,gas consumed by calulating the contract 
        //whatever gas consumed till this line  ,the op failsd 1 to 26th line gas will be consumed not reevetd
        //require will refund the gas
      assert(msg.value >1 ether);
        _;
    }
    
    
      fallback()  payable  external
    {
        //anonymous function
        //a fallback fallback function
        //whoever makes a callback to this function
        //will get back transaction details
        //which ever payble functinon we have to send the 
        //ether to int256ev
        emit  senderLog(msg.sender);
        emit  valueLog(msg.value);
        emit currentBlock(block.timestamp);
        emit gasPriceofTx(tx.gasprice);
        emit Blocknumber(block.number);
        emit minerAddress(block.coinbase);
        
    }
    
}



/*decoded output	 - Copy value to clipboard
 logs	[ { "from": "0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B", "topic": "0xfb6b0518061ef2fb2a7867aaf374f7f913ce598fa1b6f6390e89fa8fb6dd5bea", "event": "senderLog", "args": { "0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4" } }, { "from": "0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B", "topic": "0x6e9b73237336f661807a75b43d62148658c8559a951885d79d18c2528e7385a5", "event": "valueLog", "args": { "0": "10" } } ] Copy value to clipboard Copy value to clipboard
 value	10 wei 
 
 
 
 	[ { "from": "0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99", "topic": "0xfb6b0518061ef2fb2a7867aaf374f7f913ce598fa1b6f6390e89fa8fb6dd5bea", "event": "senderLog", "args": { "0": "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4" } }, { "from": "0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99", "topic": "0x6e9b73237336f661807a75b43d62148658c8559a951885d79d18c2528e7385a5", "event": "valueLog", "args": { "0": "5000" } }, { "from": "0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99", "topic": "0x389b1641dbc58f0546356145f0c799b3e05149ef174356c6590c3d1178247dec", "event": "currentBlock", "args": { "0": "1619101484" } }, { "from": "0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99", "topic": "0xd0cb15201a9fd4ba60f354dbf5e41116d5a94514e0cdabe5882f4b4c3636ea1f", "event": "gasPriceofTx", "args": { "0": "1" } }, { "from": "0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99", "topic": "0xf6e5da1d1a10be985ef16d5d53e867246ed999637f7f55c6de14c84204068e1a", "event": "Blocknumber", "args": { "0": "8" } }, { "from": "0x9D7f74d0C41E726EC95884E0e97Fa6129e3b5E99", "topic": "0x3ef1a2bdbba8507b94cc21cbb77b4eeb5c3f2375335aa1ff97983fc2fea2c7fe", "event": "minerAddress", "args": { "0": "0x94D76E24F818426ae84aa404140E8D5F60E10E7e" } } ] Copy value to clipboard 
 
 */