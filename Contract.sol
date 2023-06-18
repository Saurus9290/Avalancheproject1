// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract AssertionExample {
    function requireStatement(uint256 x) external pure returns (uint256) {
        // The require statement checks a condition and throws an error if it fails.
        // It is used to validate inputs or conditions that must be met for the contract to proceed.
        require(x > 0, "x must be greater than 0");
        return x;
    }

    function assertStatement(uint256 x) external pure returns (uint256) {
        // The assert statement checks a condition and throws an error if it fails.
        // Unlike require, assert should only be used to check for conditions that should never be false.
        assert(x > 0);
        return x;
    }

    function revertStatement(uint256 x) external pure returns (uint256) {
        // The revert statement allows for custom error messages and can be used to provide
        // additional information when throwing an error.
        if (x == 0) {
            revert("x cannot be 0");
        }
        return x;
    }
}
