pragma solidity 0.8.0;

contract ObjectFactory{

    function createObject() public returns(address){
        Object subObject = new Object();
        return address(subObject);
    }

}    

contract Object{
    
    address[] public subobjects;
    
    function createSubObject(ObjectFactory factory) public returns(address) {
        address objectAddress = factory.createObject();
        subobjects.push(objectAddress);
        return address(objectAddress); 
    }
}
