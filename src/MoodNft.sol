// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// view & pure functions

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MoodNft is ERC721 {
    uint256 private s_tokenCounter;
    string private s_sadSvgUri;
    string private s_happySvgUri;

    constructor(
        string memory sadSvg,
        string memory happySvg
    ) ERC721("MoodNft", "MOOD") {
        s_tokenCounter = 0;
        s_sadSvgUri = sadSvgUri;
        s_happySvgUri = happySvgUri;
    }

    function mintNft() public {
        // how would you require payment for this NFT?
        _safeMint(msg.sender, tokenCounter);
        s_tokenCounter++
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory){}
}
