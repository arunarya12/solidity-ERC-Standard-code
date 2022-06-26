// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "@openzepplin/contracts/token/ERC20/ERC20.sol";
import "@openzepplin/contracts/access/Ownable.sol";

contract ERC20Token is ERC20, Ownable {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(address to, uint256 amount) external onlyOwner {
        _burn(to, amount);
    }
}
