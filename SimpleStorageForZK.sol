//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;

contract SimpleFirstContract{
   bool booleanValue = true;
   int256 public intNumber = -98;
   uint256 intUnsigned = 98;
   string thisIsString = "Basic-word";
   bytes11 animal= "Elephant";

    int[] person;
    struct student{
        string name;
        uint age;
    }
    student[] public listOfStudents;


   function store(int256 newNumber) public{
        intNumber = newNumber;
   }

 mapping(string=>uint) public nameToAgeMapping;
//map str(name) to unint(age) , default value for non existing element is 0
  

   function retrieve() public view returns(uint256){
    return intUnsigned;
   }
   // view(read state -no updating state-no transaction) says it does not actually has to send the transaction


   function addStudent (string memory _name, uint _age) public{
    listOfStudents.push(student(_name, _age));
    nameToAgeMapping[_name] = _age;
   }
     //Calldata(temp variable that cant be modified) name='Pooja' not allowed, 
     //memory(temp data that can be modified) name='Alisha' -allowed, 
     //storage- data available outside function as well. e.g. animal


   
}

   // blue buttons because we dont have to spend the gas
