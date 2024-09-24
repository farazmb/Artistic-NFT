// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import "../src/nft.sol";

contract deployNFT is Script {
    function run() external {
        vm.startBroadcast();

        NFT nft = new NFT();

        nft.mintNFT(0xFd0F41A06549eaf25AE80F8b5Fcb8524F9b4836c, 0);

        vm.stopBroadcast();
    }
}
