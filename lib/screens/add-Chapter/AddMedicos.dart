
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hospital_management/helper/contstants.dart';
import 'package:hospital_management/helper/http_helper.dart';
import 'package:hospital_management/helper/patientget.dart';
import 'package:hospital_management/screens/add-Chapter/AddMed.dart';
import 'package:hospital_management/screens/add-Chapter/Addemp.dart';

class AddMedicos extends StatefulWidget {
  const AddMedicos({Key? key}) : super(key: key);

  @override
  _AddMedicosState createState() => _AddMedicosState();
}

class _AddMedicosState extends State<AddMedicos> {


  final _http = HttpHelper();
  final _medName = TextEditingController();
  final _medPrice = TextEditingController();
  final _medQuantity = TextEditingController();
  // final _medTotal = TextEditingController();
  final _medDate = TextEditingController();


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
                  'Add Medicin',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: TextField(
                controller: _medName,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Medicin Name',
                    hintText: "Type medicin name"),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: TextField(
                controller: _medPrice,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Medicin price',
                    hintText: "Type medicin price"),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: TextField(
                controller: _medQuantity,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type quantity',
                    hintText: "Type quantity"),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: TextField(
                controller: _medDate,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ' Medicin date',
                    hintText: "Medicin date"),
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
                    'Add Medicin',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                  ),
                  onPressed: () {
                    print(_medName.text);
                    print(_medPrice.text);
                    print(_medQuantity.text);
                    // print(_medTotal.text);
                    print(_medDate.text);

                    addEmployee();
                  },
                )),
          ],
        ));
  }

  Future<void> addEmployee() async {
    String mname = _medName.value.text;
    int price = int.parse(_medPrice.value.text);
    int quantity = int.parse(_medQuantity.value.text);
    // int total = int.parse(_medTotal.value.text);
    String date = _medDate.value.text;



    var model = AddMed(
      mRecord: mname,
      price: price,
      quantity: quantity,
      // total: total,
      date: date,

    );
    String _body = jsonEncode(model.toMap());

    try {

      final response =
      await _http.postData('http://192.168.0.112:8080/hms/api/medicos', _body);

      Fluttertoast.showToast(
          msg: "Medicin added Successfully",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          fontSize: 20,
          backgroundColor: Colors.green);
      _medName.clear();
      _medPrice.clear();
      _medQuantity.clear();
      // _medTotal.clear();
      _medDate.clear();

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