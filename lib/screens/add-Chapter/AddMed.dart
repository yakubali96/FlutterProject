import 'package:hospital_management/model/PatientDt.dart';
import 'dart:core';
class AddMed{


  late String mRecord;
  late int price;
  late int quantity;

  late String date;

//<editor-fold desc="Data Methods">

  AddMed({
    required this.mRecord,
    required this.price,
    required this.quantity,
    required this.date,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddMed &&
          runtimeType == other.runtimeType &&
          mRecord == other.mRecord &&
          price == other.price &&
          quantity == other.quantity &&
          date == other.date);

  @override
  int get hashCode =>
      mRecord.hashCode ^ price.hashCode ^ quantity.hashCode ^ date.hashCode;

  @override
  String toString() {
    return 'AddMed{' +
        ' mRecord: $mRecord,' +
        ' price: $price,' +
        ' quantity: $quantity,' +
        ' date: $date,' +
        '}';
  }

  AddMed copyWith({
    String? mRecord,
    int? price,
    int? quantity,
    String? date,
  }) {
    return AddMed(
      mRecord: mRecord ?? this.mRecord,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mRecord': this.mRecord,
      'price': this.price,
      'quantity': this.quantity,
      'date': this.date,
    };
  }

  factory AddMed.fromMap(Map<String, dynamic> map) {
    return AddMed(
      mRecord: map['mRecord'] as String,
      price: map['price'] as int,
      quantity: map['quantity'] as int,
      date: map['date'] as String,
    );
  }

//</editor-fold>
}