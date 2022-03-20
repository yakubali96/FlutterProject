import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/contstants.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/WardDTO.dart';

class WordsPage extends StatefulWidget {
  const WordsPage({Key? key}) : super(key: key);

  @override
  _WordsPageState createState() => _WordsPageState();
}

class _WordsPageState extends State<WordsPage> {
  List<WardDTO> wlist = [];

  @override
  void initState() {
    getWards().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;

      wlist = list.map((e) => WardDTO.fromMap(e)).toList();
      print(wlist);

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
          "Ward list",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      DataTable(
          headingRowColor: MaterialStateColor.resolveWith(
                  (states) => Colors.teal),
          columns: const [
            DataColumn(
                label: Text('ID',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
            DataColumn(
                label: Text('Ward Name',
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
            for (int i = 0; i < wlist.length; i++)
              DataRow(cells: [

                DataCell(Text(wlist[i].wid.toString())),
                DataCell(Text(wlist[i].wardName)),
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
