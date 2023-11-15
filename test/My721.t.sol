// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {My721 } from "../src/My721.sol";

contract My721Test is Test {
    My721 public my721;

    function setUp() public {
        my721 = new My721("My721", "MYT");
    }

    function test_checkMint() public {
        address to = address(this);
        my721.mint(to);
        assertEq(my721.ownerOf(1), to);

        assertEq(my721.tokenCounter(), 1);
    }

    function test_checkTokenCounter() public {
      assertEq(my721.tokenCounter(), 0);

      address to = address(this);
      my721.mint(to);

      assertEq(my721.tokenCounter(), 1);
    }
}
