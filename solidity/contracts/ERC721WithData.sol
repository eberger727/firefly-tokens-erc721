// SPDX-License-Identifier: Apache-2.0

pragma solidity ^0.6.0;

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import '@openzeppelin/contracts/utils/Context.sol';

/**
    @dev Mintable+burnable form of ERC721 with data event support.
*/
contract ERC721WithData is Context, ERC721 {
    constructor(string memory name, string memory symbol) public ERC721(name, symbol) {}

    function burnWithData(uint256 tokenId, bytes calldata data) external virtual {
        _burn(tokenId);
    }
}
