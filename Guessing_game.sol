pragma solidity ^0.8.0;

contract NumberGuessingGame {
    address public owner;
    uint256 private secretNumber;
    uint256 public betAmount;
    
    mapping(address => bool) public winners;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }
    
    function setSecretNumber(uint256 _number) public {
        require(owner == address(0) || msg.sender == owner, "Unauthorized");
        secretNumber = _number;
        if (owner == address(0)) {
            owner = msg.sender;
        }
    }
    
    function guess(uint256 _guess) public payable {
        require(msg.value >= betAmount, "Insufficient bet");
        require(_guess > 0, "Invalid guess");
        
        if (_guess == secretNumber) {
            winners[msg.sender] = true;
            payable(msg.sender).transfer(address(this).balance);
        }
    }
    
    function setBetAmount(uint256 _amount) public onlyOwner {
        betAmount = _amount;
    }
    
    function resetGame(uint256 _newSecret) public onlyOwner {
        secretNumber = _newSecret;
        delete winners[msg.sender];
    }
}
