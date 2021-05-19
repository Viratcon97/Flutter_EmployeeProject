
import 'package:flutter/material.dart';
import 'package:flutter_employee_project/model/EmployeeDetail.dart';

class EmployeeDetailScreen extends StatelessWidget {
  final item;
  EmployeeDetailScreen(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Employee Details')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: new Column(
            children:<Widget> [

              Padding(padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(20.0),
                    child: Container(
                        width: 150.0,
                        height: 150.0,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage(item['imageUrl'])
                            )
                        )
                    ),
                  ),
                  Column(
                    children: [
                      //First Name
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: item["firstName"],
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  enabled: false
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              color: Colors.white,
                              child: Text('First name'),
                            ),
                          )
                        ],
                      ),
                      //Last name
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: item["lastName"],
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  enabled: false
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              color: Colors.white,
                              child: Text('Last name'),
                            ),
                          )
                        ],
                      ),
                      //Email
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: item["email"],
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  enabled: false
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              color: Colors.white,
                              child: Text('Email'),
                            ),
                          )
                        ],
                      ),
                      //Contact Number
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: item["contactNumber"],
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  enabled: false
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              color: Colors.white,
                              child: Text('Contact Number'),
                            ),
                          )
                        ],
                      ),
                      //Age
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: item["age"].toString(),
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  enabled: false
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              color: Colors.white,
                              child: Text('Age'),
                            ),
                          )
                        ],
                      ),
                      //Salary
                      Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: item["salary"].toString(),
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  enabled: false
                              ),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            top: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3),
                              color: Colors.white,
                              child: Text('Salary'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),)
            ],
          ),
        )
      ),
    );
  }
}