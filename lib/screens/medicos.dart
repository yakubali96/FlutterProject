import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/Medicos.dart';

class MedicosPage extends StatefulWidget {
  const MedicosPage({Key? key}) : super(key: key);

  @override
  State<MedicosPage> createState() => _MedicosPageState();
}

class _MedicosPageState extends State<MedicosPage> {
  List<Medicos> mlist = [];

  @override
  void initState() {
    getMedicos().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;

      mlist = list.map((e) => Medicos.fromMap(e)).toList();
      print(mlist);

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
          "Medicin list",
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
                label: Text('Medicin Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Medicin Price',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Medicin Quantity',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Total',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Date',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            // DataColumn(
            //     label: Text('Doctors Name',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold,
            //         ))),
            DataColumn(
                label: Text('Patients Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            // DataColumn(
            //   label: Text('Patient name'),
            // ),DataColumn(
            //   label: Text('Doctors Name'),
            // ),
            DataColumn(
                label: Text('Action',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
          ], rows: [
            for (int i = 0; i < mlist.length; i++)
              DataRow(cells: [

                DataCell(Text(mlist[i].mId.toString())),
                DataCell(Text(mlist[i].mRecord)),
                DataCell(Text(mlist[i].price.toString())),
                DataCell(Text(mlist[i].quantity.toString())),
                DataCell(Text(mlist[i].total.toString())),
                DataCell(Text(mlist[i].date)),
                // DataCell(Text(mlist[i].doctor.doctorName)),
                DataCell(Text(mlist[i].patient.pName)),
                // DataCell(Text(wlist[i].patient.pName)),
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
