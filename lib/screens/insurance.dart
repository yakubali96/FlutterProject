import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/Insurance.dart';

class InsurancePage extends StatefulWidget {
  const InsurancePage({Key? key}) : super(key: key);

  @override
  State<InsurancePage> createState() => _InsurancePageState();
}

class _InsurancePageState extends State<InsurancePage> {
  List<Insurance> ilist = [];
  @override
  void initState() {
    getInsurance().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;

      ilist = list.map((e) => Insurance.fromMap(e)).toList();
      print(ilist);

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
          "Insurance list",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      DataTable(
          headingRowColor: MaterialStateColor.resolveWith(
                  (states) => Colors.teal),columns: const [
            DataColumn(
                label: Text('ID',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Insurance Amount',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Insurance Date',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Patients name',
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
          ], rows: [
            for (int i = 0; i < ilist.length; i++)
              DataRow(cells: [
                DataCell(Text(ilist[i].iNo.toString())),
                DataCell(Text(ilist[i].iAmt.toString())),
                DataCell(Text(ilist[i].iExpiryDate)),
                DataCell(Text(ilist[i].patient.pName)),
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
