// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import "../libraries/CallHelper.sol";

interface IOwnerManager {
    event OwnerCleared();
    event OwnerAdded(address indexed owner);
    event OwnerRemoved(address indexed owner);

    function isOwner(address addr) external view returns (bool);

    function resetOwner(address newOwner) external;

    function addOwner(address owner) external;

    function removeOwner(address owner) external;

    function replaceOwner(address oldOwner, address newOwner) external;

    function listOwner(
        address from,
        uint256 limit
    ) external returns (address[] memory owners);
}