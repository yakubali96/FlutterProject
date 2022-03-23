
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hospital_management/helper/contstants.dart';
import 'package:hospital_management/helper/http_helper.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/screens/add-Chapter/Addemp.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {


  final _http = HttpHelper();
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _addressController = TextEditingController();
  final _empSalaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(30),
                child: const Text(
                  'Add new Employee',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Employee Name',
                    hintText: "Type your Fullname"),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: TextField(
                controller: _mobileController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ' Employee Contact',
                    hintText: "Type your Phone number"),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: TextField(
                controller: _addressController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ' Employee Address',
                    hintText: "Type your Address"),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: TextField(
                controller: _empSalaryController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ' Employee Salary',
                    hintText: "employee Salary"),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green
                  ),
                  child: const Text(
                    'Add',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                  ),
                  onPressed: () {
                    print(_nameController.text);
                    print(_mobileController.text);
                    print(_addressController.text);
                    print(_empSalaryController.text);

                    addEmployee();
                  },
                )),
          ],
        ));
  }

  Future<void> addEmployee() async {
    String cname = _nameController.value.text;
    int contact = int.parse(_mobileController.value.text);
    String address = _addressController.value.text;
    int salary = int.parse(_empSalaryController.value.text);


    var model = AddEmp(
        empName: cname,
        empMobileNo: contact,
        empAdd: address,
        salary: salary,

        );
    String _body = jsonEncode(model.toMap());

    try {

      final response =
      await _http.postData('http://192.168.0.112:8080/hms/api/employee', _body);

      Fluttertoast.showToast(
          msg: "New Customer added Successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          fontSize: 20,
          backgroundColor: Colors.green);
      _nameController.clear();
      _mobileController.clear();
      _addressController.clear();
      _empSalaryController.clear();

    } catch (e) {
      log(e.toString());
      Fluttertoast.showToast(
          msg: "$e",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}