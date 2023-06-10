// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract mobileledger is ERC721URIStorage {
	using Counters for Counters.Counter;
	Counters.Counter private _tokenIds;

	constructor() ERC721(" Moblie Ledge Skins Collection", "mls") {}

	function mint(string memory tokenURI) public returns (uint256) {
		_tokenIds.increment();
		uint256 newItemId = _tokenIds.current();
		_mint(msg.sender, newItemId);
		_setTokenURI(newItemId, tokenURI);
		
		return newItemId;
    }
}
0x94E6d9F0A16A987D9D303807364909dbb6b9E4Ae