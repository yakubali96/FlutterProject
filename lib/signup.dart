
import 'package:flutter/material.dart';
import 'package:hospital_management/utils/routes.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/signup.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Sign Up",
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(padding: EdgeInsets.symmetric(
            vertical: 16.0,horizontal: 32.0
          ),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  labelText: "Username",
                ),
              ),
             TextFormField(
               decoration: InputDecoration(
                 hintText: "Type Password",
                 labelText: "Password",

               ),
             ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(onPressed:(){
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              } , child: Text(
                "SignUp",


                ) ,
                style: TextButton.styleFrom(),
              ),

            ],
          ),)
        ],
      ),
    );
  }
}
