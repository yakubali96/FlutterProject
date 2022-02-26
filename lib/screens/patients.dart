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
  List<PatientDt> plist= [];
  @override
  void initState() {
    getPatients().then((res) {

    setState(() {
    plist = jsonDecode(res.body);
    print(plist);
      });
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
            DataColumn(
              label: Text('Address'),
            ),
            DataColumn(
              label: Text('date Of Barth'),
            ),
            DataColumn(
              label: Text('Doctor'),
            ),

          ],
          rows:  [

            for(int i = 0; i<5;i++)
            DataRow(cells: [
              DataCell(Text(plist[i].pId.toString()),

              ),
              //DataCell(Text('Arshik')),
             // DataCell(Text('ffdf')),
             // DataCell(Text('3sdfsdf')),
              //DataCell(Text('safsdaf')),
             // DataCell(Text('asfsaf')),
            ])
          ]),
    );
  }
}


