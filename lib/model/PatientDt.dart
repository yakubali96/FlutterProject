import 'dart:core';

import 'package:hospital_management/model/test.dart';

import 'doctor.dart';

class PatientDt {
  late int pid;
  late String pName;
  late String pDob;
  late String pAdd;
  late int pMobileNo;
  late Doctor doc;
  late Test test;

//<editor-fold desc="Data Methods">

  PatientDt({
    required this.pid,
    required this.pName,
    required this.pDob,
    required this.pAdd,
    required this.pMobileNo,
    required this.doc,
    required this.test,
  });

//
//@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PatientDt &&
          runtimeType == other.runtimeType &&
          pid == other.pid &&
          pName == other.pName &&
          pDob == other.pDob &&
          pAdd == other.pAdd &&
          pMobileNo == other.pMobileNo &&
          doc == other.doc &&
          test == other.test);

//<editor-fold desc="@override
  int get hashCode =>
      pid.hashCode ^
      pName.hashCode ^
      pDob.hashCode ^
      pAdd.hashCode ^
      pMobileNo.hashCode ^
      doc.hashCode ^
      test.hashCode;


  @override
  String toString() {
    return 'PatientDt{' +
        ' pid: $pid,' +
        ' pName: $pName,' +
        ' pDob: $pDob,' +
        ' pAdd: $pAdd,' +
        ' pMobileNo: $pMobileNo,' +
        ' doc: $doc,' +
        ' test: $test,' +
        '}';
  }


  PatientDt copyWith({
    int? pid,
    String? pName,
    String? pDob,
    String? pAdd,
    int? pMobileNo,
    Doctor? doc,
    Test? test,
  }) {
    return PatientDt(
      pid: pid ?? this.pid,
      pName: pName ?? this.pName,
      pDob: pDob ?? this.pDob,
      pAdd: pAdd ?? this.pAdd,
      pMobileNo: pMobileNo ?? this.pMobileNo,
      doc: doc ?? this.doc,
      test: test ?? this.test,
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'pid': this.pid,
      'pName': this.pName,
      'pDob': this.pDob,
      'pAdd': this.pAdd,
      'pMobileNo': this.pMobileNo,
      'doc': this.doc,
      'test': this.test,
    };
  }

  factory PatientDt.fromMap(Map<String, dynamic> map) {
    return PatientDt(
      pid: map['pid'] as int,
      pName: map['pName'] as String,
      pDob: map['pDob'] as String,
      pAdd: map['pAdd'] as String,
      pMobileNo: map['pMobileNo'] as int,
      doc: Doctor.fromMap(map['doc']),
      test: Test.fromMap(map['test']),

    );
  }


  //</editor-fold>

//
//   PatientDt({
//     required this.pid,
//     required this.pName,
//     required this.pDob,
//     required this.pAdd,
//     required this.pMobileNo,
//     required this.doc,
//     required this.test,
//   });
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       (other is PatientDt &&
//           runtimeType == other.runtimeType &&
//           pid == other.pid &&
//           pName == other.pName &&
//           pDob == other.pDob &&
//           pAdd == other.pAdd &&
//           pMobileNo == other.pMobileNo &&
//           doc == other.doc) &&
//           test == other.test);
//
//   @override
//   int get hashCode =>
//       pid.hashCode ^
//       pName.hashCode ^
//       pDob.hashCode ^
//       pAdd.hashCode ^
//       pMobileNo.hashCode ^
//       doc.hashCode;
//
//   @override
//   String toString() {
//     return 'PatientDt{' +
//         ' pid: $pid,' +
//         ' pName: $pName,' +
//         ' pDob: $pDob,' +
//         ' pAdd: $pAdd,' +
//         ' pMobileNo: $pMobileNo,' +
//         ' doc: $doc,' +
//         '}';
//   }
//
//   PatientDt copyWith({
//     int? pid,
//     String? pName,
//     String? pDob,
//     String? pAdd,
//     int? pMobileNo,
//     Doctor? doc,
//   }) {
//     return PatientDt(
//       pid: pid ?? this.pid,
//       pName: pName ?? this.pName,
//       pDob: pDob ?? this.pDob,
//       pAdd: pAdd ?? this.pAdd,
//       pMobileNo: pMobileNo ?? this.pMobileNo,
//       doc: doc ?? this.doc,
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'pid': this.pid,
//       'pName': this.pName,
//       'pDob': this.pDob,
//       'pAdd': this.pAdd,
//       'pMobileNo': this.pMobileNo,
//       'doc': this.doc,
//     };
//   }
//
//   factory PatientDt.fromMap(Map<String, dynamic> map) {
//     return PatientDt(
//       pid: map['pid'] as int,
//       pName: map['pName'] as String,
//       pDob: map['pDob'] as String,
//       pAdd: map['pAdd'] as String,
//       pMobileNo: map['pMobileNo'] as int,
//       doc: Doctor.fromMap(map['doc']),
//     );
//   }
//
// //</editor-fold>
}
