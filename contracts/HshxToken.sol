// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract HshxToken is ERC20{
	constructor(uint256 initialSupply) public ERC20("HshxToken","XHASH"){
		_mint(msg.sender, initialSupply * (10 ** decimals())); 
	}
}
