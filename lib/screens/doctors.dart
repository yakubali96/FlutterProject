import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/doctor.dart';

import 'package:hospital_management/model/PatientDt.dart';

class DoctorsPage extends StatefulWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  _DoctorsPageState createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  List<Doctor> dlist = [];

  @override
  void initState() {
    getDoctors().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;
      dlist = list.map((e) => Doctor.fromMap(e)).toList();
      print(dlist);

      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(columns: const [
        DataColumn(
          label: Text('Doctor ID'),
        ),
        DataColumn(
          label: Text('Doctor Name'),
        ),
        DataColumn(
          label: Text('Doctor Address'),
        ),
        DataColumn(
          label: Text('Phone No'),
        ),
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
        for (int i = 0; i < dlist.length; i++)
          DataRow(cells: [
            DataCell(Text(dlist[i].doctorId.toString())),
            DataCell(Text(dlist[i].doctorName)),
            DataCell(Text(dlist[i].doctorAddress)),
            // DataCell(Text(plist[i].doc)),
            // DataCell(Text(plist[i].pAdd)),
            DataCell(Text(dlist[i].doctorPhoneNO.toString())),
            // DataCell(Text(plist[i].tid)),
          ])
      ]),
    );
  }
}
