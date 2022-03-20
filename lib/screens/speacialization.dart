import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/Specialization.dart';

class SpeacializationPage extends StatefulWidget {
  const SpeacializationPage({Key? key}) : super(key: key);

  @override
  State<SpeacializationPage> createState() => _SpeacializationPageState();
}

class _SpeacializationPageState extends State<SpeacializationPage> {
  List<Specialization> slist = [];

  @override
  void initState() {
    getSpea().then((res) {
      var list = jsonDecode(res.body) as List<dynamic>;
      slist = list.map((e) => Specialization.fromMap(e)).toList();
      print(slist);

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
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Specialization List",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            DataTable(columns: const [
              DataColumn(
                  label: Text('Specialization id',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))),
              DataColumn(
                  label: Text('Specialization Name',
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
              // DataColumn(
              //   label: Text('Doctor'),
              // ),
            ], rows: [
              for (int i = 0; i < slist.length; i++)
                DataRow(cells: [
                  DataCell(Text(slist[i].specId.toString())),
                  DataCell(Text(slist[i].speciality)),
                  const DataCell(
                    Icon(
                      Icons.edit,
                      color: Colors.green,
                      size: 30.0,
                    ),
                  ),
                ]),
            ]),
          ],
        ),
      ),
    );
  }
}
