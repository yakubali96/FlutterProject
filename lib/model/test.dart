import 'dart:core';

import 'Doctor.dart';

class Test {
   late int tid;
   late String tName;
   late String tDate;

//<editor-fold desc="Data Methods">

  Test({
    required this.tid,
    required this.tName,
    required this.tDate,
  });

//</e@override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is Test &&
              runtimeType == other.runtimeType &&
              tid == other.tid &&
              tName == other.tName &&
              tDate == other.tDate
          );


  @override
  int get hashCode =>
      tid.hashCode ^
      tName.hashCode ^
      tDate.hashCode;


  @override
  String toString() {
    return 'Test{' +
        ' tid: $tid,' +
        ' tName: $tName,' +
        ' tDate: $tDate,' +
        '}';
  }


  Test copyWith({
    int? tid,
    String? tName,
    String? tDate,
  }) {
    return Test(
      tid: tid ?? this.tid,
      tName: tName ?? this.tName,
      tDate: tDate ?? this.tDate,
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'tid': this.tid,
      'tName': this.tName,
      'tDate': this.tDate,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      tid: map['tid'] as int,
      tName: map['tName'] as String,
      tDate: map['tDate'] as String,
    );
  }


  //</editor-fold>

}
