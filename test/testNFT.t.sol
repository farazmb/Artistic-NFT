// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract NFT is ERC721 {
    constructor() ERC721("Artistic Token", "ART") {}

    function mintNFT(address recipient, uint256 tokenId) public {
        _safeMint(recipient, tokenId);
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return "ipfs://QmYtZfbM3GRWWqLJ1tNQV5gsgyZTL2BxbLVdp8g3pkKswL/";
    }

    function tokenURI(
        uint256 tokenId
    ) public view virtual override returns (string memory) {
        return
            string(
                abi.encodePacked(_baseURI(), Strings.toString(tokenId), ".json")
            );
    }

    function publicBaseURI() external view returns (string memory) {
        return _baseURI();
    }
}
