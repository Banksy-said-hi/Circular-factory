pragma solidity 0.8.0;

contract Factory {

    address[] public babies;
    uint public babyCounter;


    function breed() public {

        Child infant = new Child(100);

        babyCounter = babyCounter + 1;
        babies.push(address(infant));

    }

    function getA(uint _index) public view returns(uint) {
        return Child(babies[_index]).A();
    }
}


contract Child {
    
    uint public A;

    constructor(uint _a) {
        A = _a;
    }

    function click() public {
        A = A + 1;
    }
}



