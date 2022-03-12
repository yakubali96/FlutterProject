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

    return SingleChildScrollView(

        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: DataTable(columns: const [
        DataColumn(
            label: Text('ID',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                   ))

        ),
        DataColumn(
            label: Text('Name',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
        ),
        DataColumn(
            label: Text('Contact Number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
        ),
        // DataColumn(
        //   label: Text('Address'),
        // ),
        DataColumn(
            label: Text('Date of birth',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
        ),
        DataColumn(
            label: Text('Doctor',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
        ),
        DataColumn(
            label: Text('Test',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
        ),
        DataColumn(
            label: Text('Action',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ))
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
