import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospital_management/screens/contacts.dart';
import 'package:hospital_management/screens/dashboard.dart';
import 'package:hospital_management/screens/events.dart';
import 'package:hospital_management/screens/my_drawer_header.dart';
import 'package:hospital_management/screens/notes.dart';
import 'package:hospital_management/screens/notifications.dart';
import 'package:hospital_management/screens/privacy_policy.dart';
import 'package:hospital_management/screens/send_feedback.dart';
import 'package:hospital_management/screens/settings.dart';

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
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPolicyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedbackPage();
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
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "DOCTOR", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "WARD", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "DEPARTMENT", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "SPECIALIZATION", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "INSURANCE", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "BILL", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
          menuItem(9, "OPERATION", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
          menuItem(10, "TEST", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
          menuItem(11, "MEDICOS", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
          menuItem(12, "EMPLOYEE", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
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
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            } else if (id == 9) {
              currentPage = DrawerSections.send_feedback;
            } else if (id == 10) {
              currentPage = DrawerSections.send_feedback;
            } else if (id == 11) {
              currentPage = DrawerSections.send_feedback;
            } else if (id == 12) {
              currentPage = DrawerSections.send_feedback;
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
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
