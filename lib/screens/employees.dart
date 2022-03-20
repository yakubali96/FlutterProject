import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/Employee.dart';

class EmployeesPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<EmployeesPage> {
  List<Employee> emlist = [];
  @override
  void initState() {
    getEmployee().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;

      emlist = list.map((e) => Employee.fromMap(e)).toList();
      print(emlist);

      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          "Employee list",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataTable(
                          headingRowColor: MaterialStateColor.resolveWith(
                              (states) => Colors.teal),
                          columns: const [
                            DataColumn(
                                label: Text('Employee Id',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ))),
                            DataColumn(
                                label: Text('Employee Name',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ))),
                            DataColumn(
                                label: Text('Employee Mobile No',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ))),
                            DataColumn(
                                label: Text('Employee Address',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ))),
                            DataColumn(
                                label: Text('Employee Salary',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ))),
                            DataColumn(
                                label: Text('Action',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ))),
                          ],
                          rows: [
                            for (int i = 0; i < emlist.length; i++)
                              DataRow(cells: [
                                DataCell(Text(emlist[i].empId.toString())),
                                DataCell(Text(emlist[i].empName)),
                                DataCell(
                                    Text(emlist[i].empMobileNo.toString())),
                                DataCell(Text(emlist[i].empAdd)),
                                DataCell(Text(emlist[i].salary.toString())),
                                const DataCell(
                                  Icon(
                                    Icons.edit,
                                    color: Colors.green,
                                    size: 30.0,
                                  ),
                                ),
                                // // DataCell(Text(plist[i].doc)),
                                // DataCell(Text(plist[i].pAdd)),
                                // DataCell(Text(plist[i].pDob)),
                                // DataCell(Text(plist[i].tid)),
                              ])
                          ]),
                    ],
                  ),
                ])));
  }
}
