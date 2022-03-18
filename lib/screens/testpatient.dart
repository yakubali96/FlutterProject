import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';

import 'package:hospital_management/model/test.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Test> tlist = [];

  @override
  void initState() {
    getTest().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;
      tlist = list.map((e) => Test.fromMap(e)).toList();
      print(tlist);

      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(columns: const [
        DataColumn(
            label: Text('Test Id',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))),
        DataColumn(
            label: Text('Test Name',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))),
        DataColumn(
            label: Text('Test Date',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))), DataColumn(
            label: Text('Action',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))),
        // DataColumn(
        //   label: Text('Doctor'),
        // ),
        // DataColumn(
        //   label: Text('date Of Barth'),
        // ),
        // DataColumn(
        //   label: Text('Doctor'),
        // ),
        // DataColumn(
        //   label: Text('Doctor'),
        // ),
      ], rows: [
        for (int i = 0; i < tlist.length; i++)
          DataRow(cells: [
            DataCell(Text(tlist[i].tid.toString())),
            DataCell(Text(tlist[i].tName)),
            DataCell(Text(tlist[i].tDate)),
            const DataCell(
              Icon(
                Icons.edit,
                color: Colors.green,
                size: 30.0,
              ),
            ),
          // DataCell(Text(plist[i].doc)),
          // DataCell(Text(plist[i].pAdd)),
          //   DataCell(Text(tlist[i].doctor.doctorName)),
            // DataCell(Text(plist[i].tid)),
          ])
      ]),
    );
  }
}
