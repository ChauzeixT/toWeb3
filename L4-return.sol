//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Return{
    //返回多个变量
    function returnMutiple() public pure returns(uint256, bool, uint256[3] memory){
        return(1, true, [uint256(1), 2, 5]);
}
    //命名式返回
    function returnNamed() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        _number = 1;
        _bool = true;
        _array = [uint256(3), 2, 1];
        //依然支持return
        return(_number, _bool, _array);
    }
        function returnNamed2() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        return(1, true, [uint256(1), 2, 5]);
    }
    function readReturn() public pure{
        //读取所有返回值：声明变量，并且将要赋值的变量用,隔开，按顺序排列。
        uint256 _number;
        bool _bool;
        uint256[3] memory _array;
        (_number, _bool, _array) = returnNamed();

        //读取部分返回值，结构式赋值
        (, _bool, ) = returnNamed();
    }
}
