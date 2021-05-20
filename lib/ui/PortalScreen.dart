import 'dart:convert';

import 'package:alphabet_list_scroll_view/alphabet_list_scroll_view.dart';
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
  List<String> list = [];
  // Fetch content from the json file
  Future<void> readJson() async {

    final String response = await rootBundle.loadString('assets/employees.json');
    final data = await json.decode(response);
    setState(() {
      _items = data;

      _items.forEach((element) {
        list.add(element["firstName"]);
      });
      _items.sort((a, b) => a['firstName'].toLowerCase().compareTo(b['firstName'].toLowerCase()));
      print("List --> $list");
      print("Items --> $_items['firstName]");
    });


  }

  @override
  void initState() {
    super.initState();
    readJson();
  }
  @override
  Widget build(BuildContext context) {
    return AlphabetListScrollView(
      strList: list,
      showPreview: true,
      highlightTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.network(_items[index]["imageUrl"]),onTap: ()=>{
            Navigator.push(context, new MaterialPageRoute(builder: (context) => EmployeeDetailScreen(_items[index])))
          },
            title: Text(_items[index]["firstName"]),
            subtitle: Text(_items[index]["lastName"]),
          ),
        );
      },
      indexedHeight: (i) {
        return 100;
      },
      keyboardUsage: true,
    );
  }
}

