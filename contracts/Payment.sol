// SPDX-License-Identifier: MIT

pragma solidity >=0.7.13 <0.9.0;

contract Payment
{
    function split(address payable[2] memory addr) public payable 
    {
        addr[0].transfer(msg.value * 1 / 100);
        addr[1].transfer(msg.value * 99 / 100);
    }
}