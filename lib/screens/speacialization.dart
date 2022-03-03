

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/Specialization.dart';

class SpecializationPage extends StatefulWidget {
  const SpecializationPage({Key? key}) : super(key: key);

  @override
  _SpecializationPageState createState() => _SpecializationPageState();
}

class _SpecializationPageState extends State<SpecializationPage> {
  List<SpecializationPage> slist = [];

  @override
  void initState() {
    getSpeacialization().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;
      print(list);
      slist = list.map((e) => Specialization.fromMap(e)).cast<SpecializationPage>().toList();


      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(columns: const [
        DataColumn(
          label: Text('Specialized id'),
        ),
        DataColumn(
          label: Text('Specialized Name'),
        ),
        DataColumn(
          label: Text('Action'),
        ),

      ], rows: [
        for (int i = 0; i < slist.length; i++)
          DataRow(cells: [
            DataCell(Text("15")),
            DataCell(Text("Medicine")),

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
