pragma solidity ^0.4.22;

contract HshxToken{
	uint256 public totalSupply;
	string public name = "HshxToken";
	string public ticker = "HSH"; 
	event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );
	mapping(address => uint256) public balanceOf;
	function HshxToken(uint256 _initialSupply) public {
	   balanceOf[msg.sender] = _initialSupply; 	
       totalSupply = _initialSupply;
	}
	function transfer(address _to, uint256 _value) public returns (bool success){
		require(balanceOf[msg.sender] >= _value);
		balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        Transfer(msg.sender, _to, _value);

        return true;
	}   

}
