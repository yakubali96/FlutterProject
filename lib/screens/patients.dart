import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/PatientDt.dart';

class PatientsPage extends StatefulWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  _PatientsPageState createState() => _PatientsPageState();
}

class _PatientsPageState extends State<PatientsPage> {

  List<PatientDt> plist = [];

  @override
  void initState() {
    getPatients().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;
      print(list);
      plist = list.map((e) => PatientDt.fromMap(e)).toList();

      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(

      child: DataTable(


          columns: const [
        DataColumn(
          label: Text('ID'),
        ),
        DataColumn(
          label: Text('Name'),
        ),
        DataColumn(
          label: Text('Contact Number'),
        ),
        // DataColumn(
        //   label: Text('Address'),
        // ),
        DataColumn(
          label: Text('date Of Barth'),
        ),
        DataColumn(
          label: Text('Doctor'),
        ),
        DataColumn(
          label: Text('Test'),
        ),
        DataColumn(
          label: Text('action'),
        ),
      ], rows: [
        for (int i = 0; i < plist.length; i++)
          DataRow(cells: [
            DataCell(Text(plist[i].pid.toString())),
            DataCell(Text(plist[i].pName)),
            DataCell(Text(plist[i].pMobileNo.toString())),
           // DataCell(Text(plist[i].doc)),
           //  DataCell(Text(plist[i].pAdd)),
            DataCell(Text(plist[i].pDob)),
            DataCell(Text(plist[i].doc.doctorName)),
           DataCell(Text(plist[i].test.tName)),
            DataCell(
              Icon(
                Icons.edit,
                color: Colors.green,
                size: 30.0,
              ),
            ),
            // DataCell(Text(plist[i].tid)),
          ])
      ]),
    );
  }
}
