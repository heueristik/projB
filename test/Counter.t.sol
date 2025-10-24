// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std-1.11.0/src/Test.sol";
import {Counter} from "projA-1/src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    address internal constant OWNER = address(uint160(1));

    function setUp() public {
        counter = new Counter(OWNER);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        vm.prank(OWNER);
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
