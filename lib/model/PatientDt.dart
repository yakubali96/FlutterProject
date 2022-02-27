import 'dart:core';

class PatientDt {
  late int pid;
   late String pName;

//<editor-fold desc="Data Methods">

  PatientDt({
    required this.pid,
    required this.pName,
  });

// la@override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is PatientDt &&
              runtimeType == other.runtimeType &&
              pid == other.pid &&
              pName == other.pName
          );


  @override
  int get hashCode =>
      pid.hashCode ^
      pName.hashCode;


  @override
  String toString() {
    return 'PatientDt{' +
        ' pid: $pid,' +
        ' pName: $pName,' +
        '}';
  }


  PatientDt copyWith({
    int? pid,
    String? pName,
  }) {
    return PatientDt(
      pid: pid ?? this.pid,
      pName: pName ?? this.pName,
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'pid': this.pid,
      'pName': this.pName,
    };
  }

  factory PatientDt.fromMap(Map<String, dynamic> map) {
    return PatientDt(
      pid: map['pid'] as int,
      pName: map['pName'] as String,
    );
  }


  //</editor-fold>

  // late String pAdd;
  //
  // late int pMobileNo;

  // late String doc;
  // late String test;




}
