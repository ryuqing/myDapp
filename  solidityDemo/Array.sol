pragma solidity ^0.8.7;

contract Array {
    uint[] public nums = [1, 2, 3];
    uint[3] public numsFixed = [4, 5, 6];

    /*
    常用
    arr.push(), arr.pop(), arr.length, delete arr[1];
    */

    function examples() external {
        nums.push(4);// [1, 2, 3, 4];
        uint x = nums[1];
        nums[2] = 777; //[1, 2, 3, 4, 777];
        delete nums[1];//[1, 0, 4, 777]; //delete 只能删除值 不能改变数组长度 所以那个位定数字会变成0
        nums.pop();// [1, 0, 777];
        uint length = nums.length;

        uint[] memory a = new uint[](5);//在内存中局部变量只能定义定长数组，不能创建动态数组；动态数组只能存在状态变量中；
        //a.pop() a.push() 不能用
    }

    function returnArray() external view returns (uint[] memory) {
        return nums;
    }
}
