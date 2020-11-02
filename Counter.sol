pragma solidity ^0.5.8;

// Imagine a big integer counter that the whole world could share
contract Counter {
    int value;
    address organizer;

    modifier onlyOrganizer() {
	    require(msg.sender == organizer,'onlyOrganizer'); _;
	}

    constructor() public {
        organizer = msg.sender;
    }

    function initialize (int x) public onlyOrganizer(){
        value = x;
    }

    function get() public view returns (int){
        return value;
    }
    function increment (int n) public {
        value = value + n;
       // return;
    }
    function decrement (int n) public {
        value = value - n;
        //return;
    }
}