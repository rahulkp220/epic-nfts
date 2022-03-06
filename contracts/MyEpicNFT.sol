// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("EggsNFT", "EGGS") {
        console.log("This is my NFT contract!");
    }

    function makeNFT () public {
        uint256 newItemId = _tokenIds.current();
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, "data:application/json;base64,eyJuYW1lIjoiRXBpY0xvcmRIYW1idXJnZXIiLCJkZXNjcmlwdGlvbiI6IkFuIE5GVCBmcm9tIHRoZSBoaWdobHkgYWNjbGFpbWVkIHNxdWFyZSBjb2xsZWN0aW9uIiwiaW1hZ2UiOiJkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUI0Yld4dWN6MGlhSFIwY0RvdkwzZDNkeTUzTXk1dmNtY3ZNakF3TUM5emRtY2lJSEJ5WlhObGNuWmxRWE53WldOMFVtRjBhVzg5SW5oTmFXNVpUV2x1SUcxbFpYUWlJSFpwWlhkQ2IzZzlJakFnTUNBek5UQWdNelV3SWo0S0lDQThjM1I1YkdVK0NpQWdJQ0F1WW1GelpTQjdJR1pwYkd3NklIZG9hWFJsT3lCbWIyNTBMV1poYldsc2VUb2djMlZ5YVdZN0lHWnZiblF0YzJsNlpUb2dNVFJ3ZURzZ2ZRb2dJRHd2YzNSNWJHVStDaUFnUEhKbFkzUWdkMmxrZEdnOUlqRXdNQ1VpSUdobGFXZG9kRDBpTVRBd0pTSWdabWxzYkQwaVlteGhZMnNpTHo0S0lDQThkR1Y0ZENCNFBTSTFNQ1VpSUhrOUlqVXdKU0lnWTJ4aGMzTTlJbUpoYzJVaUlHUnZiV2x1WVc1MExXSmhjMlZzYVc1bFBTSnRhV1JrYkdVaUlIUmxlSFF0WVc1amFHOXlQU0p0YVdSa2JHVWlQa1Z3YVdOTWIzSmtTR0Z0WW5WeVoyVnlQQzkwWlhoMFBnbzhMM04yWno0SyJ9");
        _tokenIds.increment();
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
    } 
}