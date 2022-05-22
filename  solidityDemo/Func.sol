pragma solidity ^0.8.7;

contract Func {
    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }

    function named() public pure returns (uint num, bool b) {
        x = 25;
        b = true; //这样同样能够完成返回
    }

    //调用函数
    function assignments() public pure  {
        (uint a, bool b) = returnMany();
        (, bool b) = returnMany(); //只要第一个
    }

}
