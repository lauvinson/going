// Some3 DApp is created by vinson on 2022/01/19
pragma solidity ^0.8.0;

contract Some3Coin {
    address public minter;
    mapping(address => uint) public balances;

    event Sent(address form, address to, uint amount);

    function Coin() public {
        minter = msg.sender;
    }

    function mint(address receiver, uint amount) public {
        if (msg.sender != minter) return;
        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public {
        if (balance[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }
}
