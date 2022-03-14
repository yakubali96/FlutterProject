import 'dart:core';

import 'Doctor.dart';

class Test {
   late int tid;
   late String tName;
   late String tDate;
   late Doctor doctor;

//<editor-fold desc="Data Methods">

  Test({
    required this.tid,
    required this.tName,
    required this.tDate,
    required this.doctor,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Test &&
          runtimeType == other.runtimeType &&
          tid == other.tid &&
          tName == other.tName &&
          tDate == other.tDate &&
          doctor == other.doctor);

  @override
  int get hashCode =>
      tid.hashCode ^ tName.hashCode ^ tDate.hashCode ^ doctor.hashCode;

  @override
  String toString() {
    return 'Test{' +
        ' tid: $tid,' +
        ' tName: $tName,' +
        ' tDate: $tDate,' +
        ' doctor: $doctor,' +
        '}';
  }

  Test copyWith({
    int? tid,
    String? tName,
    String? tDate,
    Doctor? doctor,
  }) {
    return Test(
      tid: tid ?? this.tid,
      tName: tName ?? this.tName,
      tDate: tDate ?? this.tDate,
      doctor: doctor ?? this.doctor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tid': this.tid,
      'tName': this.tName,
      'tDate': this.tDate,
      'doctor': this.doctor,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      tid: map['tid'] as int,
      tName: map['tName'] as String,
      tDate: map['tDate'] as String,
      // doctor: map['doctor'] as Doctor,
      doctor: Doctor.fromMap(map['doctor']),
    );
  }

//</editor-fold>
}
