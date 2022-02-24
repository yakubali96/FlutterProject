import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Test Page"),
      ),
    );
  }
}