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

    //移除一个元素和它的索引
    function remove(uint _index) public { //因为delete会留默认，所以自己写
        require(_index < nums.length, "length err");
        for (uint i = _index; i < nums.length -1; i++) {
            nums[i] = nums[i+1];
        }
        nums.pop();
    }

    //如果对顺序没要求：可以用数组最后一个元素替换要删除的那个元素 最后再pop就好了 -- 这个方法比上一个方法节约gas
    function remove2(uint _index) public {
        uint numLength = nums.length -1;
        if (numLength > 0) {
            uint lastNum = nums[nums.length -1];
            nums[_index] = lastNum;
            nums.pop();
        }
    }

    function test() external {
        remove2(1);
        assert(nums.length == 2);
    }

}
