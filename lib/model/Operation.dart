import 'package:hospital_management/model/PatientDt.dart';

import 'Doctor.dart';

class Operation{

  late int oid;
  late String oName;
  late PatientDt patient;
  late Doctor doctor;

//<editor-fold desc="Data Methods">

  Operation({
    required this.oid,
    required this.oName,
    required this.patient,
    required this.doctor,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Operation &&
          runtimeType == other.runtimeType &&
          oid == other.oid &&
          oName == other.oName &&
          patient == other.patient &&
          doctor == other.doctor);

  @override
  int get hashCode =>
      oid.hashCode ^ oName.hashCode ^ patient.hashCode ^ doctor.hashCode;

  @override
  String toString() {
    return 'Operation{' +
        ' oid: $oid,' +
        ' oName: $oName,' +
        ' patient: $patient,' +
        ' doctor: $doctor,' +
        '}';
  }

  Operation copyWith({
    int? oid,
    String? oName,
    PatientDt? patient,
    Doctor? doctor,
  }) {
    return Operation(
      oid: oid ?? this.oid,
      oName: oName ?? this.oName,
      patient: patient ?? this.patient,
      doctor: doctor ?? this.doctor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'oid': this.oid,
      'oName': this.oName,
      'patient': this.patient,
      'doctor': this.doctor,
    };
  }

  factory Operation.fromMap(Map<String, dynamic> map) {
    return Operation(
      oid: map['oid'] as int,
      oName: map['oName'] as String,
      patient: map['patient'] as PatientDt,
      doctor: map['doctor'] as Doctor,
    );
  }

//</editor-fold>
}