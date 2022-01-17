pragma solidity 0.8.0;

contract Factory {

    address[] public babies;
    uint public babyCounter;


    function breed() public {

        if (babyCounter == 0) {

            Child infant = new Child(100);

            babyCounter = babyCounter + 1;
            babies.push(address(infant));

        } else {

            Child infant = new Child(Child(babies[babyCounter-1]).A());

            babyCounter = babyCounter + 1;
            babies.push(address(infant));     

        }
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



