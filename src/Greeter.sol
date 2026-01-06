// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Strings} from "@openzeppelin-contracts-5.5.0/utils/Strings.sol";
import {Counter} from "projA-1/src/Counter.sol";

contract Greeter {
    using Strings for *;
    uint256 public number;

    function greet() public pure returns (string memory greeting) {
        greeting = "Hello!";
    }

    function greetWithCounter(
        Counter counter
    ) public view returns (string memory greeting) {
        greeting = string.concat("Hello ", counter.number().toString(), " !");
    }
}
