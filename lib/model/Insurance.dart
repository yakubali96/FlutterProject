import 'package:hospital_management/model/PatientDt.dart';

class Insurance{
  late int iNo;
  late double iAmt;
  late String iExpiryDate;
  late PatientDt patient;

//<editor-fold desc="Data Methods">

  Insurance({
    required this.iNo,
    required this.iAmt,
    required this.iExpiryDate,
    required this.patient,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Insurance &&
          runtimeType == other.runtimeType &&
          iNo == other.iNo &&
          iAmt == other.iAmt &&
          iExpiryDate == other.iExpiryDate &&
          patient == other.patient);

  @override
  int get hashCode =>
      iNo.hashCode ^ iAmt.hashCode ^ iExpiryDate.hashCode ^ patient.hashCode;

  @override
  String toString() {
    return 'Insurance{' +
        ' iNo: $iNo,' +
        ' iAmt: $iAmt,' +
        ' iExpiryDate: $iExpiryDate,' +
        ' patient: $patient,' +
        '}';
  }

  Insurance copyWith({
    int? iNo,
    double? iAmt,
    String? iExpiryDate,
    PatientDt? patient,
  }) {
    return Insurance(
      iNo: iNo ?? this.iNo,
      iAmt: iAmt ?? this.iAmt,
      iExpiryDate: iExpiryDate ?? this.iExpiryDate,
      patient: patient ?? this.patient,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'iNo': this.iNo,
      'iAmt': this.iAmt,
      'iExpiryDate': this.iExpiryDate,
      'patient': this.patient,
    };
  }

  factory Insurance.fromMap(Map<String, dynamic> map) {
    return Insurance(
      iNo: map['iNo'] as int,
      iAmt: map['iAmt'] as double,
      iExpiryDate: map['iExpiryDate'] as String,
      patient: map['patient'] as PatientDt,
    );
  }

//</editor-fold>
}