//  Ownable 可以判断合约的调用者是否为当前合约的owner，
//  从而避免其他人随意的调用一些合约的关键操作。
//  同时，owner 可以指定任何其他人为此合约新的 owner，
//  显然，只有当前owner才能指定其他人为新的owner。
contract Ownable {
    //  变量 owner 指定此合约的owner
    address public owner;
    //  发布事件 - 此合约owner已经换人（此逻辑与modifier无关，可以忽略）
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    //  构造函数 - 创建合约自动执行，初始化合约所有人为合约创建者
    function Ownable() public {
        owner = msg.sender;
    }

    //  定义一个函数修改器
    modifier onlyOwner() {
        // 判断此函数调用者是否为owner
        require(msg.sender == owner);
        _;
    }

    // owner可以用此函数将owner所有权转换给其他人，显然次函数只有owner才能调用
    // 函数末尾加上onlyOwner声明，onlyOwner正是上面定义的modifier
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0));
        OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

}