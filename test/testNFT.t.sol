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
}
