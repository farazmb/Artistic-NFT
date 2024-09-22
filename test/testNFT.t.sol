//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import "..//src/nft.sol";

contract nftTest is Test {
    NFT nft;
    address recipient = address(this); // EOA address

    function setUp() public {
        nft = new NFT();
    }

    function testDeployment() public view {
        assertEq(nft.name(), "Astistic Token");
        assertEq(nft.symbol(), "ART");
    }

    // function testMinting() public {
    //     uint256 tokenId = 1;

    //     nft.mintNFT(recipient, tokenId);
    //     assertEq(nft.ownerOf(1), recipient);
    // }
    function testBaseURI() public {
        string memory baseURI = "ipfs://QmYtZfbM3GRWWqLJ1tNQV5gsgyZTL2BxbLVdp8g3pkKswL"
        "ipfs://QmY8zPTizXgBCjgRqkBF1ySREkVJc35ER7hVgfHtUR3XzP";
        assertEq(nft.publicBaseURI(), baseURI, "Base URI should match");
    }
}
