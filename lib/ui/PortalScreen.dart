import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_employee_project/model/EmployeeDetail.dart';

import 'EmployeeDetailScreen.dart';

class PortalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Portal'),),
      body: EmployeeList(),
    );
  }
}

class EmployeeList extends StatefulWidget {
  @override
  _employeeList createState() => _employeeList();
}

class _employeeList extends State<EmployeeList>{

  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {

    final String response = await rootBundle.loadString('assets/employees.json');
    final data = await json.decode(response);
    setState(() {
      _items = data;
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        // Display the data loaded from employees.json
        _items.length > 0
        ? Expanded(
        child: ListView.builder(
        itemCount: _items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Image.network(_items[index]["imageUrl"]),
                title: Text(_items[index]["firstName"]),
                subtitle: Text(_items[index]["lastName"]),

                onTap: ()=>{
                Navigator.push(context, new MaterialPageRoute(builder: (context) => EmployeeDetailScreen(_items[index])
                    )
                  )
                },
              ),
            );
          },
        ),
        ): Container()
      ],
    );
  }
}
