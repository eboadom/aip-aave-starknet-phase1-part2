// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPool {
  function withdraw(
    address asset,
    uint256 amount,
    address to
  ) external returns (uint256);
}