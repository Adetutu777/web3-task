// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

 contract Register {
     struct Record{
         uint age;
         string name;
         uint id;
     }

  uint currentId = 1;

  mapping(uint=>Record) public StudentRecord ;

  function RegisterStudent(string memory name_, uint age_) public{
    //   
      Record memory student;

      student.name = name_;
      student.age = age_;
      student.id = currentId;

        StudentRecord[currentId]=student;

        currentId++;

  }


 }