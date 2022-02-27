import 'package:flutter/material.dart';
import 'package:hospital_management/screens/login.dart';
import 'package:hospital_management/screens/patients.dart';
import 'package:hospital_management/screens/signup.dart';
import 'package:hospital_management/utils/routes.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: MyRoutes.patientsRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.patientsRoute: (context) => PatientsPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.signupRoute: (context) => SignUp(),
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

