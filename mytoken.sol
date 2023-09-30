// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


   
contract MyToken {                              // public variables here
    string public tokenName = "Krishna";
    string public tokenAbbvr = "KRISH";
    uint256 public totalSupply;


    mapping(address => uint256) public balances;         // mapping variable here

    constructor() {
        totalSupply = 0;
    }

    function mint(address _address, uint256 _value) public {            // mint function
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(uint256 _value) public {                                // burn function
        require(balances[msg.sender] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}

