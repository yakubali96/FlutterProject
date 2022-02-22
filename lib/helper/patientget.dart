import 'dart:convert';

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