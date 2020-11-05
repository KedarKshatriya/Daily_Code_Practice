//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.12;

contract Loop {
   
    function funct() public {
        // for loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint i;
        while (i < 10) {
            i++;
        }
    }
}
