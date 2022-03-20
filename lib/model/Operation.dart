import 'package:hospital_management/model/Doctor.dart';
import 'package:hospital_management/model/PatientDt.dart';



class Operation{

   late int oid;
   late String oName;
   late PatientDt patient;

//<editor-fold desc="Data Methods">

  Operation({
    required this.oid,
    required this.oName,
    required this.patient,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Operation &&
          runtimeType == other.runtimeType &&
          oid == other.oid &&
          oName == other.oName &&
          patient == other.patient);

  @override
  int get hashCode => oid.hashCode ^ oName.hashCode ^ patient.hashCode;

  @override
  String toString() {
    return 'Operation{' +
        ' oid: $oid,' +
        ' oName: $oName,' +
        ' patient: $patient,' +
        '}';
  }

  Operation copyWith({
    int? oid,
    String? oName,
    PatientDt? patient,
  }) {
    return Operation(
      oid: oid ?? this.oid,
      oName: oName ?? this.oName,
      patient: patient ?? this.patient,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'oid': this.oid,
      'oName': this.oName,
      'patient': this.patient,
    };
  }

  factory Operation.fromMap(Map<String, dynamic> map) {
    return Operation(
      oid: map['oid'] as int,
      oName: map['oName'] as String,
      patient: PatientDt.fromMap(map['patient']),
    );
  }

//</editor-fold>
}