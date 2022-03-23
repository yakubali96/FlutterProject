import 'dart:convert';

import 'package:hospital_management/model/user_payload.dart';
import 'package:http/http.dart' as http;

import 'contstants.dart';

Map<String, String> requestHeaders = {
  'Content-type': 'application/json',
};

Future<http.Response> getPatients() async {
  final response = await http.get(Uri.parse(getAllPatientApi),
      headers: requestHeaders );


  return response;

//get doctors
}

Future<http.Response> getDoctors() async {
  final response = await http.get(Uri.parse(getAllDoctorApi),
      headers: requestHeaders);


  return response;
}
  Future<http.Response> getWards() async {
    final response = await http.get(Uri.parse(getAllWardApi),
        headers: requestHeaders );


    return response;


}

Future<http.Response> getTest() async {
  final response = await http.get(Uri.parse(getAllTestApi),
      headers: requestHeaders);


  return response;
}
  Future<http.Response> getSpea() async {
    final response = await http.get(Uri.parse(getAllSpeApi),
        headers: requestHeaders );


    return response;

}
Future<http.Response> getInsurance() async {
  final response = await http.get(Uri.parse(getAllInsurance),
      headers: requestHeaders );


  return response;

}
Future<http.Response> getMedicos() async {
  final response = await http.get(Uri.parse(getAllMedicos),
      headers: requestHeaders );


  return response;

}
Future<http.Response> getBill() async {
  final response = await http.get(Uri.parse(getAllBill),
      headers: requestHeaders );


  return response;

}
Future<http.Response> getOpt() async {
  final response = await http.get(Uri.parse(getAllOpt),
      headers: requestHeaders );


  return response;

}
Future<http.Response> getEmployee() async {
  final response = await http.get(Uri.parse(getAllEmp),
      headers: requestHeaders );


  return response;

}
Future<http.Response> saveEmployee() async {
  final response = await http.post(Uri.parse(saveEmp),
      headers: requestHeaders );


  return response;

}
Future<http.Response> saveMedicin() async {
  final response = await http.post(Uri.parse(saveMed),
      headers: requestHeaders );


  return response;

}
//
// Future<http.Response> signUp(EmployeeModel employee) async {
//   final response = await http.post(Uri.parse(registerApi),
//       headers: requestHeaders, body: jsonEncode(employee.toMap()));
//
//   return response;
//
// }

Future<http.Response> signIn(Login userlogin) async {
  final response = await http.post(Uri.parse(loginApi),
      headers: requestHeaders, body: jsonEncode(userlogin.toMap()));
  return response;

}
