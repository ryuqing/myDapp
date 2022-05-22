pragma solidity ^0.8.7;

contract OwnAble {
    address public owner; //状态变量
    constructor () { //constructor 只有函数部署的时候会
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(owner == msg.sender, "not owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "address can not be 0");
        owner = _newOwner;
    }

    function onlyOwnerCallThisFunc() external onlyOwner {
        //不是部署者调用这个合约会报错
    }

    function anyOneCanCall() external  {
        //任何地址都可以调用这个
    }
}
