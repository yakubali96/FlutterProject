import 'dart:core';

import 'dart:core';

import 'package:hospital_management/model/Doctor.dart';
import 'package:hospital_management/model/PatientDt.dart';

class Medicos{

  late int mId;
  late String mRecord;
  late int price;
  late int quantity;
  late int total;
  late String date;
  late Doctor doctor;
  late PatientDt  patient;

//<editor-fold desc="Data Methods">

  Medicos({
    required this.mId,
    required this.mRecord,
    required this.price,
    required this.quantity,
    required this.total,
    required this.date,
    required this.doctor,
    required this.patient,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Medicos &&
          runtimeType == other.runtimeType &&
          mId == other.mId &&
          mRecord == other.mRecord &&
          price == other.price &&
          quantity == other.quantity &&
          total == other.total &&
          date == other.date &&
          doctor == other.doctor &&
          patient == other.patient);

  @override
  int get hashCode =>
      mId.hashCode ^
      mRecord.hashCode ^
      price.hashCode ^
      quantity.hashCode ^
      total.hashCode ^
      date.hashCode ^
      doctor.hashCode ^
      patient.hashCode;

  @override
  String toString() {
    return 'Medicos{' +
        ' mId: $mId,' +
        ' mRecord: $mRecord,' +
        ' price: $price,' +
        ' quantity: $quantity,' +
        ' total: $total,' +
        ' date: $date,' +
        ' doctor: $doctor,' +
        ' patient: $patient,' +
        '}';
  }

  Medicos copyWith({
    int? mId,
    String? mRecord,
    int? price,
    int? quantity,
    int? total,
    String? date,
    Doctor? doctor,
    PatientDt? patient,
  }) {
    return Medicos(
      mId: mId ?? this.mId,
      mRecord: mRecord ?? this.mRecord,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      date: date ?? this.date,
      doctor: doctor ?? this.doctor,
      patient: patient ?? this.patient,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mId': this.mId,
      'mRecord': this.mRecord,
      'price': this.price,
      'quantity': this.quantity,
      'total': this.total,
      'date': this.date,
      'doctor': this.doctor,
      'patient': this.patient,
    };
  }

  factory Medicos.fromMap(Map<String, dynamic> map) {
    return Medicos(
      mId: map['mId'] as int,
      mRecord: map['mRecord'] as String,
      price: map['price'] as int,
      quantity: map['quantity'] as int,
      total: map['total'] as int,
      date: map['date'] as String,
      doctor: map['doctor'] as Doctor,
      patient: map['patient'] as PatientDt,
    );
  }

//</editor-fold>
}