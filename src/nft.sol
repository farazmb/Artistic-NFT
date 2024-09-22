//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    constructor() ERC721("Astistic Token", "ART") {}

    function mintNFT(address recipient, uint256 tokenId) public {
        _safeMint(recipient, tokenId);
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return
            "ipfs://QmYtZfbM3GRWWqLJ1tNQV5gsgyZTL2BxbLVdp8g3pkKswL"
            "ipfs://QmY8zPTizXgBCjgRqkBF1ySREkVJc35ER7hVgfHtUR3XzP";
    }
}
