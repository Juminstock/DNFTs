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
    "https://gateway.pinata.cloud/ipfs/QmU3RhRWq8P2qtawD5cmTkzH9drsGgrLev72z2BzwuEcLP",
    "https://gateway.pinata.cloud/ipfs/QmVaomyVLkVLX2k2JYXo8eQ9gqLJiZpoA7SUsU6wuDdiRK",
    "https://gateway.pinata.cloud/ipfs/QmUynUnAuatYwfMVmc5qBCS9iNW2fEpzhunuC4YgLouZe6",
    "https://gateway.pinata.cloud/ipfs/QmW9sLSVB4oZPsEbwAW5j6HUevg5KBnFZAUeJZVKAwJDic"
    ];

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("ZToken", "ZTK") {}

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uriData[0]);
    }
    //Change metada function
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