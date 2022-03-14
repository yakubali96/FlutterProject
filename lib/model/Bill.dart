 import 'package:hospital_management/model/PatientDt.dart';

import 'Insurance.dart';

class Bill {
  late int bId;
  late int bAmt;
  late bool isInsuared;
  late String billDate;
  late Insurance insurance;
  late PatientDt patient;

//<editor-fold desc="Data Methods">

  Bill({
    required this.bId,
    required this.bAmt,
    required this.isInsuared,
    required this.billDate,
    required this.insurance,
    required this.patient,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bill &&
          runtimeType == other.runtimeType &&
          bId == other.bId &&
          bAmt == other.bAmt &&
          isInsuared == other.isInsuared &&
          billDate == other.billDate &&
          insurance == other.insurance &&
          patient == other.patient);

  @override
  int get hashCode =>
      bId.hashCode ^
      bAmt.hashCode ^
      isInsuared.hashCode ^
      billDate.hashCode ^
      insurance.hashCode ^
      patient.hashCode;

  @override
  String toString() {
    return 'Bill{' +
        ' bId: $bId,' +
        ' bAmt: $bAmt,' +
        ' isInsuared: $isInsuared,' +
        ' billDate: $billDate,' +
        ' insurance: $insurance,' +
        ' patient: $patient,' +
        '}';
  }

  Bill copyWith({
    int? bId,
    int? bAmt,
    bool? isInsuared,
    String? billDate,
    Insurance? insurance,
    PatientDt? patient,
  }) {
    return Bill(
      bId: bId ?? this.bId,
      bAmt: bAmt ?? this.bAmt,
      isInsuared: isInsuared ?? this.isInsuared,
      billDate: billDate ?? this.billDate,
      insurance: insurance ?? this.insurance,
      patient: patient ?? this.patient,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bId': this.bId,
      'bAmt': this.bAmt,
      'isInsuared': this.isInsuared,
      'billDate': this.billDate,
      'insurance': this.insurance,
      'patient': this.patient,
    };
  }

  factory Bill.fromMap(Map<String, dynamic> map) {
    return Bill(
      bId: map['bId'] as int,
      bAmt: map['bAmt'] as int,
      isInsuared: map['isInsuared'] as bool,
      billDate: map['billDate'] as String,
      insurance: map['insurance'] as Insurance,
      patient: map['patient'] as PatientDt,
    );
  }

//</editor-fold>
}