pragma solidity 0.8.7;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";

contract NFT is ERC1155 {
    uint256 public constant CROMO = 0;

    constructor() ERC1155("https://yhjt10enscso.usemoralis.com:2053/server/functions/getNFT?_ApplicationId=uuDdcLq7hmX4zhY3kdFOFO0irO1tsKMTG9gWwsBg&id={id}") {
        _mint(msg.sender, CROMO, 30, "");
    }

    function mint(...) public onlyOwner{
        _mint(...)
    }
}

 