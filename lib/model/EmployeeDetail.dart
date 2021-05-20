
import 'dart:convert';

class EmployeeDetail{

  int id;
  String imageUrl;
  String firstName;
  String lastName;
  String email;
  String contactNumber;
  int age;
  String dob;
  double salary;
  String address;

  EmployeeDetail({
      this.id,
      this.imageUrl,
      this.firstName,
      this.lastName,
      this.email,
      this.contactNumber,
      this.age,
      this.dob,
      this.salary,
      this.address});

  factory EmployeeDetail.fromJson(Map<String, dynamic> parsedJson){
    return EmployeeDetail(
          id : parsedJson['id'],
          imageUrl : parsedJson['imageUrl'],
          firstName : parsedJson['firstName'],
          lastName : parsedJson['lastName'],
          email : parsedJson['email'],
          contactNumber : parsedJson['contactNumber'],
          age : parsedJson['age'],
          dob : parsedJson['dob'],
          salary : parsedJson['salary'],
          address : parsedJson['address'],
        );
  }
}

