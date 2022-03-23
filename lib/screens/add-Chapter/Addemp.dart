import 'dart:core';
class AddEmp {

  late String empName;
  late int empMobileNo;
  late String empAdd;
  late int salary;

//<editor-fold desc="Data Methods">

  AddEmp({
    required this.empName,
    required this.empMobileNo,
    required this.empAdd,
    required this.salary,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddEmp &&
          runtimeType == other.runtimeType &&
          empName == other.empName &&
          empMobileNo == other.empMobileNo &&
          empAdd == other.empAdd &&
          salary == other.salary);

  @override
  int get hashCode =>
      empName.hashCode ^
      empMobileNo.hashCode ^
      empAdd.hashCode ^
      salary.hashCode;

  @override
  String toString() {
    return 'AddEmp{' +
        ' empName: $empName,' +
        ' empMobileNo: $empMobileNo,' +
        ' empAdd: $empAdd,' +
        ' salary: $salary,' +
        '}';
  }

  AddEmp copyWith({
    String? empName,
    int? empMobileNo,
    String? empAdd,
    int? salary,
  }) {
    return AddEmp(
      empName: empName ?? this.empName,
      empMobileNo: empMobileNo ?? this.empMobileNo,
      empAdd: empAdd ?? this.empAdd,
      salary: salary ?? this.salary,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'empName': this.empName,
      'empMobileNo': this.empMobileNo,
      'empAdd': this.empAdd,
      'salary': this.salary,
    };
  }

  factory AddEmp.fromMap(Map<String, dynamic> map) {
    return AddEmp(
      empName: map['empName'] as String,
      empMobileNo: map['empMobileNo'] as int,
      empAdd: map['empAdd'] as String,
      salary: map['salary'] as int,
    );
  }

//</editor-fold>
}