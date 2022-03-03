//SPDX-License-Identifier: Unlicense
//  tells Solidity that it can use the latest build in a major version range. In the preceding example, Solidity can use a compiler from any build in the version 4 build range. This is a way to tell readers that your program was written for 0.8.
pragma solidity ^0.8.12;

/**
    @title Hello World contract that stores unsigned int variable with get, set function
*/

contract HelloWorld {
    // This variable is unsigned int type state variable
    // This variable is private so that it is unmodifiable from outer contract scope, but is allowed to read from anyone.
    uint256 private myNumber;

    /**
        @param _myNumber The given variable is being designated under the process of deployment
        @dev The function sets "myNumber" using the given parameter "_myNumber"
     */
    constructor(uint256 _myNumber) {
        myNumber = _myNumber;
    }

    /**
        @dev The function gets the variable "myNumber" which is state variable
        @return myNumber state variable in uint256 type
     */
    function getMyNumber() public view returns (uint256) {
        return myNumber;
    }

    /**
        @dev The function sets a new value for mutating myNumber state variable
        @param _newNumber The given parameter to reinitalize myNumber state variable
        @return true boolean value after mutating the variable successfully
     */
    function setMyNumber(uint256 _newNumber) external returns (bool) {
        myNumber = _newNumber;
        return true;
    }
}