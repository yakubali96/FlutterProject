import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospital_management/screens/employees.dart';
import 'package:hospital_management/screens/medicos.dart';
import 'package:hospital_management/screens/operation.dart';
import 'package:hospital_management/screens/patients.dart';
import 'package:hospital_management/screens/dashboard.dart';
import 'package:hospital_management/screens/doctors.dart';
import 'package:hospital_management/screens/my_drawer_header.dart';
import 'package:hospital_management/screens/test.dart';
import 'package:hospital_management/screens/words.dart';
import 'package:hospital_management/screens/speacialization.dart';
import 'package:hospital_management/screens/insurance.dart';
import 'package:hospital_management/screens/bill.dart';
import 'package:hospital_management/screens/departments.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.patients) {
      container = PatientsPage();
    } else if (currentPage == DrawerSections.doctors) {
      container = DoctorsPage();
    } else if (currentPage == DrawerSections.words) {
      container = WordsPage();
    } else if (currentPage == DrawerSections.departments) {
      container = DepartmentsPage();
    } else if (currentPage == DrawerSections.speacialization) {
      container = SpecializationPage();
    } else if (currentPage == DrawerSections.insurance) {
      container = InsurancePage();
    } else if (currentPage == DrawerSections.bill) {
      container = Bill();
    } else if (currentPage == DrawerSections.operation) {
      container = OperationPage();
    } else if (currentPage == DrawerSections.test) {
      container = TestPage();
    } else if (currentPage == DrawerSections.medicos) {
      container = MedicosPage();
    } else if (currentPage == DrawerSections.employee) {
      container = EmployeesPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text("Hospital Management"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "PATIENTS", Icons.local_hospital_rounded,
              currentPage == DrawerSections.patients ? true : false),
          menuItem(3, "DOCTOR", Icons.event,
              currentPage == DrawerSections.doctors ? true : false),
          menuItem(4, "WARD", Icons.notes,
              currentPage == DrawerSections.words ? true : false),
          Divider(),
          menuItem(5, "DEPARTMENT", Icons.settings_outlined,
              currentPage == DrawerSections.departments ? true : false),
          menuItem(6, "SPECIALIZATION", Icons.notifications_outlined,
              currentPage == DrawerSections.speacialization ? true : false),
          Divider(),
          menuItem(7, "INSURANCE", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.insurance ? true : false),
          menuItem(8, "BILL", Icons.feedback_outlined,
              currentPage == DrawerSections.bill ? true : false),
          menuItem(9, "OPERATION", Icons.feedback_outlined,
              currentPage == DrawerSections.operation ? true : false),
          menuItem(10, "TEST", Icons.feedback_outlined,
              currentPage == DrawerSections.test ? true : false),
          menuItem(11, "MEDICOS", Icons.feedback_outlined,
              currentPage == DrawerSections.medicos ? true : false),
          menuItem(12, "EMPLOYEE", Icons.feedback_outlined,
              currentPage == DrawerSections.employee ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.patients;
            } else if (id == 3) {
              currentPage = DrawerSections.doctors;
            } else if (id == 4) {
              currentPage = DrawerSections.words;
            } else if (id == 5) {
              currentPage = DrawerSections.departments;
            } else if (id == 6) {
              currentPage = DrawerSections.speacialization;
            } else if (id == 7) {
              currentPage = DrawerSections.insurance;
            } else if (id == 8) {
              currentPage = DrawerSections.bill;
            } else if (id == 9) {
              currentPage = DrawerSections.operation;
            } else if (id == 10) {
              currentPage = DrawerSections.test;
            } else if (id == 11) {
              currentPage = DrawerSections.medicos;
            } else if (id == 12) {
              currentPage = DrawerSections.employee;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  patients,
  doctors,
  words,
  departments,
  speacialization,
  insurance,
  bill,
  operation,
  test,
  medicos,
  employee
}
