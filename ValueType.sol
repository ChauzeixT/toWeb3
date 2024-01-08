//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract ValueType{

//布尔型，布尔型是二值变量，取值为true或false。

    //布尔值
    bool public _bool = true;
    //布尔运算
    bool public _bool1 = !_bool;
    bool public _bool2 = _bool && _bool1;
    bool public _bool3 = _bool || _bool1;
    bool public _bool4 = _bool == _bool1;
    bool public _bool5 = _bool != _bool1;

//整型，整型是solidity中的整数

    //整数 
    int public _int = -1;
    uint public _uint = 1;
    uint256 public _number = 20240108;
    //整数运算
    uint256 public _number1 = _number + 1; //+, -, *, /
    uint256 public _number2 = 2 ** 2; //指数
    uint256 public _number3 = 7 % 2; //取余
    bool public _numberbool = _number2 > _number3; //>, >=, <, <=, !=, ==

//地址类型，地址类型(address)存储一个 20 字节的值（以太坊地址的大小）。地址类型也有成员变量，并作为所有合约的基础。有普通的地址和可以转账ETH的地址（payable）。
//其中，payable修饰的地址相对普通地址多了transfer和send两个成员。在payable修饰的地址中，send执行失败不会影响当前合约的执行（但是返回false值，需要开发人员检查send返回值）。balance和transfer()，可以用来查询ETH余额以及安全转账（内置执行失败的处理）。

    //地址
    address public _address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //payable address,可以转账、查余额
    address payable _address1 = payable(_address);
    //地址类型的成员
    uint256 public balance = _address1.balance; //balance of address

//定长字节数组,字节数组bytes分两种，一种定长（byte, bytes8, bytes32），另一种不定长。定长的属于数值类型，不定长的是引用类型

    //固定长度的字节数组
    bytes32 public _bytes32 = "MiniSolidity";
    bytes1 public _byte = _bytes32[0];

//枚举enum,枚举（enum）是solidity中用户定义的数据类型。它主要用于为uint分配名称，使程序易于阅读和维护。它与C语言中的enum类似，使用名称来代替从0开始的uint

    //用enum将0， 1， 2表示为buy, hold, sell
    enum ActionSet { buy, hold, sell }
    //创建enum变量Action
    ActionSet Action0 = ActionSet.buy;
    ActionSet Action2 = ActionSet.sell;
    //enum可以和uint显式的转换
    function enumToUint0() external view returns(uint){
        return uint(Action0);
    }
    function enumToUint2() external view returns(uint){
        return uint(Action2);
    }
}