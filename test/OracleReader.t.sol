// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {OracleReader} from "../src/OracleReader.sol";

contract OracleReaderTest is Test {
    OracleReader public oracle;

    function setUp() public {
        oracle = new OracleReader();
    }

    function test_read() public view {
        uint a;
        uint b;
        (a, b) = oracle.read();
        assertEq(a, 3023816766700000000000);
    }
}
