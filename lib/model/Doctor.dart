import 'Specialization.dart';
import 'department.dart';

class Doctor {
  int doctorId;
  String doctorName;
  String doctorAddress;
  int doctorPhoneNO;
  Department department;
  Specialization specialization;

//<editor-fold desc="Data Methods">

  Doctor({
    required this.doctorId,
    required this.doctorName,
    required this.doctorAddress,
    required this.doctorPhoneNO,
    required this.department,
    required this.specialization,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Doctor &&
          runtimeType == other.runtimeType &&
          doctorId == other.doctorId &&
          doctorName == other.doctorName &&
          doctorAddress == other.doctorAddress &&
          doctorPhoneNO == other.doctorPhoneNO &&
          department == other.department &&
          specialization == other.specialization);

  @override
  int get hashCode =>
      doctorId.hashCode ^
      doctorName.hashCode ^
      doctorAddress.hashCode ^
      doctorPhoneNO.hashCode ^
      department.hashCode ^
      specialization.hashCode;

  @override
  String toString() {
    return 'Doctor{' +
        ' doctorId: $doctorId,' +
        ' doctorName: $doctorName,' +
        ' doctorAddress: $doctorAddress,' +
        ' doctorPhoneNO: $doctorPhoneNO,' +
        ' department: $department,' +
        ' specialization: $specialization,' +
        '}';
  }

  Doctor copyWith({
    int? doctorId,
    String? doctorName,
    String? doctorAddress,
    int? doctorPhoneNO,
    Department? department,
    Specialization? specialization,
  }) {
    return Doctor(
      doctorId: doctorId ?? this.doctorId,
      doctorName: doctorName ?? this.doctorName,
      doctorAddress: doctorAddress ?? this.doctorAddress,
      doctorPhoneNO: doctorPhoneNO ?? this.doctorPhoneNO,
      department: department ?? this.department,
      specialization: specialization ?? this.specialization,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'doctorId': doctorId,
      'doctorName': doctorName,
      'doctorAddress': doctorAddress,
      'doctorPhoneNO': doctorPhoneNO,
      'department': department,
      'specialization': specialization,
    };
  }

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      doctorId: map['doctorId'] as int,
      doctorName: map['doctorName'] as String,
      doctorAddress: map['doctorAddress'] as String,
      doctorPhoneNO: map['doctorPhoneNO'] as int,
      department: Department.fromMap(map['department']),
      specialization: Specialization.fromMap(map['specialization']),
    );
  }

//</editor-fold>
}