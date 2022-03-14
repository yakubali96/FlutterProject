import 'dart:core';

// import 'package:hospital_management/model/test.dart';

import 'Doctor.dart';

class PatientDt {
  late int pid;
  late String pName;
  late String pDob;
  late String pAdd;
  late int pMobileNo;
  late Doctor doctor;

//<editor-fold desc="Data Methods">

  PatientDt({
    required this.pid,
    required this.pName,
    required this.pDob,
    required this.pAdd,
    required this.pMobileNo,
    required this.doctor,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PatientDt &&
          runtimeType == other.runtimeType &&
          pid == other.pid &&
          pName == other.pName &&
          pDob == other.pDob &&
          pAdd == other.pAdd &&
          pMobileNo == other.pMobileNo &&
          doctor == other.doctor);

  @override
  int get hashCode =>
      pid.hashCode ^
      pName.hashCode ^
      pDob.hashCode ^
      pAdd.hashCode ^
      pMobileNo.hashCode ^
      doctor.hashCode;

  @override
  String toString() {
    return 'PatientDt{' +
        ' pid: $pid,' +
        ' pName: $pName,' +
        ' pDob: $pDob,' +
        ' pAdd: $pAdd,' +
        ' pMobileNo: $pMobileNo,' +
        ' doctor: $doctor,' +
        '}';
  }

  PatientDt copyWith({
    int? pid,
    String? pName,
    String? pDob,
    String? pAdd,
    int? pMobileNo,
    Doctor? doctor,
  }) {
    return PatientDt(
      pid: pid ?? this.pid,
      pName: pName ?? this.pName,
      pDob: pDob ?? this.pDob,
      pAdd: pAdd ?? this.pAdd,
      pMobileNo: pMobileNo ?? this.pMobileNo,
      doctor: doctor ?? this.doctor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pid': pid,
      'pName': pName,
      'pDob': pDob,
      'pAdd': pAdd,
      'pMobileNo': pMobileNo,
      'doctor': doctor,
    };
  }

  factory PatientDt.fromMap(Map<String, dynamic> map) {
    return PatientDt(
      pid: map['pid'] as int,
      pName: map['pName'] as String,
      pDob: map['pDob'] as String,
      pAdd: map['pAdd'] as String,
      pMobileNo: map['pMobileNo'] as int,
      doctor: Doctor.fromMap(map['doctor'])
      // department: Department.fromMap(map['department']),

    );
  }

//</editor-fold>
}
