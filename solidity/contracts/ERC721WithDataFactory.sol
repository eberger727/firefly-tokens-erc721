//SPDX-License-Identifier: Unlicense
pragma solidity ^0.6.0;

import './ERC721WithData.sol';

contract ERC721WithDataFactory is Context {
    event TokenCreate(address indexed operator, address indexed contract_address, string name, string symbol, bytes data);

    function create(
        string memory name,
        string memory symbol,
        bytes calldata data
    ) external virtual {
        ERC721WithData dc = new ERC721WithData(name, symbol);
        emit TokenCreate(_msgSender(), address(dc), name, symbol, data);
    }
}
