// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {OracleReader} from "../src/OracleReader.sol";

contract OracleReaderTest is Test {
    OracleReader public oracle;

    function setUp() public {
        oracle = new OracleReader();
    }

    uint256 public constant price_ETH_atBlock_7484876 = 3023816766700000000000;

    function test_read() public view {
        uint256 a;
        uint256 b;
        (a, b) = oracle.read();
        assertEq(a, price_ETH_atBlock_7484876);
    }
}
