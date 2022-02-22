import 'package:flutter/material.dart';
import 'package:hospital_management/helper/patientget.dart';

class PatientsPage extends StatelessWidget {
  const PatientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    getPatients().then((res){
      print(res.body);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Patients"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Root page Root"),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
      ),
    );
  }
}
