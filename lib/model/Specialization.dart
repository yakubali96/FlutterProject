import 'dart:core';

class Specialization {
  late int specId;
  late String speciality;

//<editor-fold desc="Data Methods">

  Specialization({
    required this.specId,
    required this.speciality,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Specialization &&
          runtimeType == other.runtimeType &&
          specId == other.specId &&
          speciality == other.speciality);

  @override
  int get hashCode => specId.hashCode ^ speciality.hashCode;

  @override
  String toString() {
    return 'Specialization{' +
        ' specId: $specId,' +
        ' speciality: $speciality,' +
        '}';
  }

  Specialization copyWith({
    int? specId,
    String? speciality,
  }) {
    return Specialization(
      specId: specId ?? this.specId,
      speciality: speciality ?? this.speciality,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'specId': specId,
      'speciality': speciality,
    };
  }

  factory Specialization.fromMap(Map<String, dynamic> map) {
    return Specialization(
      specId: map['specId'] as int,
      speciality: map['speciality'] as String,
    );
  }

//</editor-fold>
}
