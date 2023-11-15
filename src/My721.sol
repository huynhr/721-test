// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


contract My721 is ERC721URIStorage {
    uint256 public tokenCounter;

    constructor(string memory name, string memory symbol) ERC721(name, symbol) {
        tokenCounter = 0;
    }

    function mint(address to) public {
        // Increment the token counter
        tokenCounter++;

        // Mint the token
        _mint(to, tokenCounter);

        // Set the token URI
        _setTokenURI(tokenCounter, "https://bafkreifilncvzfagyx53h7qtqidcdy47256od32mh3euqmakvlreydhwpq.ipfs.nftstorage.link");
    }
}