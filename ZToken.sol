// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract ZToken is ERC721, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    string uriData = "https://gateway.pinata.cloud/ipfs/QmcXXF1hL1pS584htyVMotTFXBtEXVgVGh5nd8E1Af2maY";

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("ZToken", "ZTK") {}

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uriData);
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }
}