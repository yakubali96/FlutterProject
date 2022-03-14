import 'dart:core';

import 'dart:core';



class Employee{
  late int empId;
  late String empName;
  late int empMobileNo;
  late String empAdd;
  late int salary;

//<editor-fold desc="Data Methods">

  Employee({
    required this.empId,
    required this.empName,
    required this.empMobileNo,
    required this.empAdd,
    required this.salary,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Employee &&
          runtimeType == other.runtimeType &&
          empId == other.empId &&
          empName == other.empName &&
          empMobileNo == other.empMobileNo &&
          empAdd == other.empAdd &&
          salary == other.salary);

  @override
  int get hashCode =>
      empId.hashCode ^
      empName.hashCode ^
      empMobileNo.hashCode ^
      empAdd.hashCode ^
      salary.hashCode;

  @override
  String toString() {
    return 'Employee{' +
        ' empId: $empId,' +
        ' empName: $empName,' +
        ' empMobileNo: $empMobileNo,' +
        ' empAdd: $empAdd,' +
        ' salary: $salary,' +
        '}';
  }

  Employee copyWith({
    int? empId,
    String? empName,
    int? empMobileNo,
    String? empAdd,
    int? salary,
  }) {
    return Employee(
      empId: empId ?? this.empId,
      empName: empName ?? this.empName,
      empMobileNo: empMobileNo ?? this.empMobileNo,
      empAdd: empAdd ?? this.empAdd,
      salary: salary ?? this.salary,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'empId': this.empId,
      'empName': this.empName,
      'empMobileNo': this.empMobileNo,
      'empAdd': this.empAdd,
      'salary': this.salary,
    };
  }

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      empId: map['empId'] as int,
      empName: map['empName'] as String,
      empMobileNo: map['empMobileNo'] as int,
      empAdd: map['empAdd'] as String,
      salary: map['salary'] as int,
    );
  }

//</editor-fold>
}