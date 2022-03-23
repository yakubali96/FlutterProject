//
// import 'dart:convert';
// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:hospital_management/helper/contstants.dart';
// import 'package:hospital_management/helper/http_helper.dart';
// import 'package:hospital_management/helper/patientget.dart';
// import 'package:hospital_management/screens/add-Chapter/AddMed.dart';
// import 'package:hospital_management/screens/add-Chapter/Addemp.dart';
//
// class AddBill extends StatefulWidget {
//   const AddBill({Key? key}) : super(key: key);
//
//   @override
//   _AddBillState createState() => _AddBillState();
// }
//
// class _AddBillState extends State<AddBill> {
//
//
//   final _http = HttpHelper();
//   final _billId = TextEditingController();
//   final _billAmount = TextEditingController();
//
//   final _isInsuranced = TextEditingController();
//   final _billDate = TextEditingController();
//   final _iInsuranced = TextEditingController();
//   final _Patient = TextEditingController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: <Widget>[
//             Container(
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.all(30),
//                 child: const Text(
//                   'Add Total Bill',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w900,
//                       fontSize: 30),
//                 )),
//             Container(
//               padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
//               child: TextField(
//                 controller: _billId,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Bill id',
//                     hintText: "Type bill id"),
//               ),
//             ),
//
//             Container(
//               padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
//               child: TextField(
//                 controller: _billAmount,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Bill amount',
//                     hintText: "bill amount"),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
//               child: TextField(
//                 controller: _isInsuranced,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'is insuranced',
//                     hintText: "Type insuranced or not"),
//               ),
//             ),
//
//             Container(
//               padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
//               child: TextField(
//                 controller: _billDate,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'date',
//                     hintText: " date"),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
//               child: TextField(
//                 controller: _Patient,
//                 decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'patient name',
//                     hintText: "patient name"),
//               ),
//             ),
//
//
//
//             const SizedBox(
//               height: 30.0,
//             ),
//             Container(
//                 height: 50,
//                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       primary: Colors.green
//                   ),
//                   child: const Text(
//                     'Add Total cost',
//                     style:
//                     TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
//                   ),
//                   onPressed: () {
//                     print(_billId.text);
//                     print(_billAmount.text);
//                     print(_isInsuranced.text);
//                     // print(_medTotal.text);
//                     print(_billDate.text);
//                     print(_Patient.text);
//
//                     addBill();
//                   },
//                 )),
//           ],
//         ));
//   }
//
//   Future<void> addBill() async {
//     int bid = int.parse(_billId.value.text);
//     int bamount = int.parse(_billAmount.value.text);
//     bool isbool = bool.fromEnvironment(_isInsuranced.value.text);
//     int quantity = int.parse(_medQuantity.value.text);
//     // int total = int.parse(_medTotal.value.text);
//     String date = _billDate.value.text;
//
//
//
//     var model = AddMed(
//       mRecord: mname,
//       price: price,
//       quantity: quantity,
//       // total: total,
//       date: date,
//
//     );
//     String _body = jsonEncode(model.toMap());
//
//     try {
//
//       final response =
//       await _http.postData('http://192.168.0.112:8080/hms/api/medicos', _body);
//
//       Fluttertoast.showToast(
//           msg: "Medicin added Successfully",
//           toastLength: Toast.LENGTH_LONG,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 3,
//           fontSize: 20,
//           backgroundColor: Colors.green);
//       _medName.clear();
//       _medPrice.clear();
//       _medQuantity.clear();
//       // _medTotal.clear();
//       _medDate.clear();
//
//     } catch (e) {
//       log(e.toString());
//       Fluttertoast.showToast(
//           msg: "$e",
//           toastLength: Toast.LENGTH_LONG,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 16.0);
//     }
//   }
// }