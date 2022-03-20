import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/Bill.dart';

class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<BillPage> createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  List<Bill> blist =[];
  @override
  void initState() {
    getBill().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;

      blist = list.map((e) => Bill.fromMap(e)).toList();
      print(blist);

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
          "Bill list",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      DataTable(
        headingRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.teal),
        columns: [
          DataColumn(
            label: Text(
              'Bill Id',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
            DataColumn(
                label: Text('Bill Amound',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Insuransed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Bill Date',
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
                label: Text('Patient Name',
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
            for (int i = 0; i < blist.length; i++)
              DataRow(cells: [

                DataCell(Text(blist[i].bId.toString())),
                DataCell(Text(blist[i].bAmt.toString())),
                DataCell(Text(blist[i].isInsuared.toString())),
                DataCell(Text(blist[i].billDate)),
                DataCell(Text(blist[i].insurance.iAmt.toString())),
                DataCell(Text(blist[i].patient.pName)),


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

    ]
    )
    )
    );
  }
}
