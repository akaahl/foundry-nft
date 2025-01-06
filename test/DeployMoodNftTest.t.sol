// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {DeployMoodNft} from "../script/DeployMoodNft.s.sol";
import {Test, console} from "forge-std/Test.sol";

contract MoodNftTest is Test {
    DeployMoodNft deployer;

    function setUp() public {
        deployer = new DeployMoodNft();
    }
}
