import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/model/Doctor.dart';

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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,


        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(20),
              child: Text(
                "Doctors List",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            DataTable(columns: const [

              DataColumn(
                  label: Text('Doctor id',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))),
              DataColumn(
                  label: Text('Doctor Name',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))),
              DataColumn(
                  label: Text('Doctors Address',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))),
              DataColumn(
                  label: Text('Phone no',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))),
              DataColumn(
                  label: Text('Department Name',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))),
              DataColumn(
                  label: Text('Speacialization',
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
              for (int i = 0; i < dlist.length; i++)
                DataRow(cells: [
                  DataCell(Text(dlist[i].doctorId.toString())),
                  DataCell(Text(dlist[i].doctorName)),
                  DataCell(Text(dlist[i].doctorAddress)),
                  // DataCell(Text(plist[i].doc)),
                  // DataCell(Text(plist[i].pAdd)),
                  DataCell(Text(dlist[i].doctorPhoneNO.toString())),
                  DataCell(
                    Text(dlist[i].department.deptName),
                  ),DataCell(
                    Text(dlist[i].specialization.speciality),
                  ),
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
