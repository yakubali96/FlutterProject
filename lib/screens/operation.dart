import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/Operation.dart';

class OperationPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<OperationPage> {
  List<Operation> olist = [];
  @override
  void initState() {
    getOpt().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;

      olist = list.map((e) => Operation.fromMap(e)).toList();
      print(olist);

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
                          "Operation list",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DataTable(
                          headingRowColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.teal),columns: const [
                        DataColumn(
                            label: Text('Operation Id',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text('Operation Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ))),
                        DataColumn(
                            label: Text('Patients Name',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ))),
                        // DataColumn(
                        //     label: Text('Doctors name',
                        //         textAlign: TextAlign.center,
                        //         style: TextStyle(
                        //           fontSize: 18,
                        //           fontWeight: FontWeight.bold,
                        //         ))),
                        DataColumn(
                            label: Text('Action',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ))),
                      ], rows: [
                        for (int i = 0; i < olist.length; i++)
                          DataRow(cells: [
                            DataCell(Text(olist[i].oid.toString())),
                            DataCell(Text(olist[i].oName)),
                            DataCell(Text(olist[i].patient.pName)),
                            // DataCell(Text(olist[i].doctor.doctorName)),
                            // DataCell(Text(wlist[i].doctor.doctorName)),
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
