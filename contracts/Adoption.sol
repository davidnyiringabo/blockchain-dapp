pragma solidity ^0.5.0;

contract Adoption {
    // array of adopter ethereum wallet addresses
    // 16 is the number of available pet
    address[16] public adopters;

    // adopt one of pet
    function adopt(uint petId) public returns (uint) {
        // validation of pet id
        require(petId >= 0 && petId <=15);

        // msg.sender = adopter ethereum wallet address
        adopters[petId] = msg.sender;

        // return same pet id as success confirmation
        return petId;
    }

    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
