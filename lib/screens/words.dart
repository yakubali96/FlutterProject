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

      wlist=list.map((e) => WardDTO.fromMap(e)).toList();
      print(wlist);

      setState(() {

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(columns: const [
        DataColumn(
          label: Text('ID'),
        ),
        DataColumn(
          label: Text('Name'),
        ),

      ], rows: [
        for (int i = 0; i < wlist.length; i++)
          DataRow(cells: [
            DataCell(Text(wlist[i].wid.toString())),
            DataCell(Text(wlist[i].wardName)),
            // DataCell(Text(plist[i].pMobileNo.toString())),
            // // DataCell(Text(plist[i].doc)),
            // DataCell(Text(plist[i].pAdd)),
            // DataCell(Text(plist[i].pDob)),
            // DataCell(Text(plist[i].tid)),
          ])
      ]),
    );
  }
}
