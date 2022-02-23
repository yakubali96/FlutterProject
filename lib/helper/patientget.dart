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
