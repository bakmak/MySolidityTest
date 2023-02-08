// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract Crowdfunding {
    
    struct Donor {  //  出资人
        address addr;   //  出资人地址
        uint amount;    //  出资人金额
    }
    
    struct Donee {  //  募资人
        address addr;   //  募资人地址
        uint goal;      //  募资目标金额
        uint amount;    //  已筹集金额
        uint donorCount;    //  捐赠者数量
        bool status;    //  项目有效性：true 有效 false 无效
        mapping(uint => Donor) donorMap;    //  出资人字典
    }

    uint doneeCount;    //  募资人数量
    mapping(uint => Donee) doneeMap;    //  募资人字典

    address payable owner;  //  合约拥有者

    constructor() {     //  构造函数
        owner = msg.sender; //  设置合约拥有者
    }

    function destroy() public onlyOwner {   //  销毁合约
        selfdestruct(owner);
    }

    modifier onlyOwner() {  //  校验合约拥有者
        require(msg.sender == owner);   //  判断函数调用者是否为owner
        _;
    }

    modifier validDonee(uint doneeID) {     //  校验募资项目ID合法性
        require(doneeID > 0 && doneeID <= doneeCount);
        _;
    }

    //  设置募资人和募资金额
    function setDonee(address addr, uint goal) public onlyOwner {   
        for(uint i = 0; i < doneeCount; i++) {
            Donee storage d = doneeMap[i+1];
            if(d.addr == addr){
                d.goal = goal;
                return ;
            }
        }

        doneeCount++;
        Donee storage donee = doneeMap[doneeCount];
        donee.addr = addr;
        donee.goal = goal;
        donee.status = true;
    }

    //  出资人捐赠
    function donate(uint doneeID) public payable validDonee(doneeID) {  
        Donee storage donee = doneeMap[doneeID];
        require(donee.status);

        donee.donorCount++;
        donee.amount += msg.value;  //  出资人金额

        Donor storage donor = donee.donorMap[donee.donorCount];
        donor.addr = msg.sender;
        donor.amount = msg.value;
    }

    //  完成目标给募资人转账
    function transfer(uint doneeID) public payable onlyOwner validDonee(doneeID) {  
        Donee storage donee = doneeMap[doneeID];
        if(donee.amount >= donee.goal) {
            payable(donee.addr).transfer(donee.goal);   //  给募资人转账
        } else {
            revert();       //  金额不足
        }
    }

    function withdraw() public payable onlyOwner {      //  合约转账到拥有者
        msg.sender.transfer(address(this).balance);
    }

    function getDoneeCount() public view returns(uint) {    //  查询募资人数量
        return doneeCount;
    }

    //  获取募资人信息
    function getDonee(uint doneeID) public view returns(address doneeAddr, uint doneeGoal, uint doneeAmount) {  
        return (doneeMap[doneeID].addr, doneeMap[doneeID].goal, doneeMap[doneeID].amount);
    }

    function getBalance() public view returns(uint) {   //  获取合约余额
        return address(this).balance;
    }

    //  设定项目状态是否有效
    function setStatus(uint doneeID, bool status) public onlyOwner {    
        Donee storage donee = doneeMap[doneeID];
        donee.status = status;
    }

    //  获取项目状态
    function getStatus(uint doneeID) public view validDonee(doneeID) returns(bool) {    
        Donee storage donee = doneeMap[doneeID];
        return donee.status;
    }

    fallback() external {
    }

    receive() payable external {
    }

}

//  1000000000000000000 wei