import 'package:flutter/material.dart';
import 'package:hospital_management/login.dart';
import 'package:hospital_management/utils/routes.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
routes: {

  "/" :(context) => LoginPage(),
  MyRoutes.homeRoute:(context) => HomePage(),
  MyRoutes.loginRoute:(context) => LoginPage(),
},

    );
  }
}
