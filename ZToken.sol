// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract ZToken is ERC721, ERC721Enumerable, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    string[] uriData = [
    "https://gateway.pinata.cloud/ipfs/QmcXXF1hL1pS584htyVMotTFXBtEXVgVGh5nd8E1Af2maY",
    "https://gateway.pinata.cloud/ipfs/QmRaXmWC3JXLskGvVpRVZopKyNzCH7o4Pew7vD4c2V8g9H",
    "https://gateway.pinata.cloud/ipfs/QmfK6JvxPdZ4nCJbMkK8zGRPq8V4diUMDRNHic9BwmodvT",
    "https://gateway.pinata.cloud/ipfs/QmdLjmUpbx1pv4j2ESeVhhw3D2MJhsmD4cF449FG35ZLyS"
    ];

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("ZToken", "ZTK") {}

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uriData[0]);
    }
    //our function
    function updateUriData(uint256 _tokenId, string memory _uriData) public onlyOwner {
        _setTokenURI(_tokenId, _uriData);
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize)
        internal
        override(ERC721, ERC721Enumerable)
    {
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
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

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}