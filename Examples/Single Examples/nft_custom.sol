pragma solidity 0.8.7;

//Import ERC1155 token contract from Openzeppelin
// SPDX-License-Identifier: MIT

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract NFTContract is ERC1155, Ownable {
    uint256 public constant CROMO_1 = 0;
    uint256 public constant CROMO_2 = 1;

    constructor() ERC1155("https://yhjt10enscso.usemoralis.com:/{id}.json") {
        _mint(msg.sender, CROMO_1, 1, "");
        _mint(msg.sender, CROMO_2, 2, "");
    }

    function mint(
        address account,
        uint256 id,
        uint256 amount
    ) public onlyOwner {
        _mint(account, id, amount, "");
    }

    function burn(
        address account,
        uint256 id,
        uint256 amount
    ) public {
        require(msg.sender == account);
        _burn(account, id, amount);
    }
}
