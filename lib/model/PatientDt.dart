import 'dart:core';

// import 'package:hospital_management/model/test.dart';

import 'Doctor.dart';

class PatientDt {
  late int pid;
  late String pName;
  late String pDob;
  late String pAdd;
  late int pMobileNo;

//<editor-fold desc="Data Methods">

  PatientDt({
    required this.pid,
    required this.pName,
    required this.pDob,
    required this.pAdd,
    required this.pMobileNo,
  });

// la@override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is PatientDt &&
              runtimeType == other.runtimeType &&
              pid == other.pid &&
              pName == other.pName &&
              pDob == other.pDob &&
              pAdd == other.pAdd &&
              pMobileNo == other.pMobileNo
          );


  @override
  int get hashCode =>
      pid.hashCode ^
      pName.hashCode ^
      pDob.hashCode ^
      pAdd.hashCode ^
      pMobileNo.hashCode;


  @override
  String toString() {
    return 'PatientDt{' +
        ' pid: $pid,' +
        ' pName: $pName,' +
        ' pDob: $pDob,' +
        ' pAdd: $pAdd,' +
        ' pMobileNo: $pMobileNo,' +
        '}';
  }


  PatientDt copyWith({
    int? pid,
    String? pName,
    String? pDob,
    String? pAdd,
    int? pMobileNo,
  }) {
    return PatientDt(
      pid: pid ?? this.pid,
      pName: pName ?? this.pName,
      pDob: pDob ?? this.pDob,
      pAdd: pAdd ?? this.pAdd,
      pMobileNo: pMobileNo ?? this.pMobileNo,
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'pid': this.pid,
      'pName': this.pName,
      'pDob': this.pDob,
      'pAdd': this.pAdd,
      'pMobileNo': this.pMobileNo,
    };
  }

  factory PatientDt.fromMap(Map<String, dynamic> map) {
    return PatientDt(
      pid: map['pid'] as int,
      pName: map['pName'] as String,
      pDob: map['pDob'] as String,
      pAdd: map['pAdd'] as String,
      pMobileNo: map['pMobileNo'] as int,
    );
  }


  //</editor-fold>



//</editor-fold>
}
