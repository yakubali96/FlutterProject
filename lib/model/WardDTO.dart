import 'PatientDt.dart';
import 'Doctor.dart';

class WardDTO{
  late int wid;
  late String wardName;
  late PatientDt patient;
  late Doctor doctor;

//<editor-fold desc="Data Methods">

  WardDTO({
    required this.wid,
    required this.wardName,
    required this.patient,
    required this.doctor,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WardDTO &&
          runtimeType == other.runtimeType &&
          wid == other.wid &&
          wardName == other.wardName &&
          patient == other.patient &&
          doctor == other.doctor);

  @override
  int get hashCode =>
      wid.hashCode ^ wardName.hashCode ^ patient.hashCode ^ doctor.hashCode;

  @override
  String toString() {
    return 'WardDTO{' +
        ' wid: $wid,' +
        ' wardName: $wardName,' +
        ' patient: $patient,' +
        ' doctor: $doctor,' +
        '}';
  }

  WardDTO copyWith({
    int? wid,
    String? wardName,
    PatientDt? patient,
    Doctor? doctor,
  }) {
    return WardDTO(
      wid: wid ?? this.wid,
      wardName: wardName ?? this.wardName,
      patient: patient ?? this.patient,
      doctor: doctor ?? this.doctor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wid': wid,
      'wardName': wardName,
      'patient': patient,
      'doctor': doctor,
    };
  }

  factory WardDTO.fromMap(Map<String, dynamic> map) {
    return WardDTO(
      wid: map['wid'] as int,
      wardName: map['wardName'] as String,
      patient: PatientDt.fromMap(map['patient']),
      doctor: Doctor.fromMap(map['doctor']),

    );
  }

//</editor-fold>
}