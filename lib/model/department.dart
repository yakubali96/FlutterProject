class Department {
   int deptId;
  String deptName;

//<editor-fold desc="Data Methods">

  Department({
    required this.deptId,
    required this.deptName,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Department &&
          runtimeType == other.runtimeType &&
          deptId == other.deptId &&
          deptName == other.deptName);

  @override
  int get hashCode => deptId.hashCode ^ deptName.hashCode;

  @override
  String toString() {
    return 'Department{' + ' deptId: $deptId,' + ' deptName: $deptName,' + '}';
  }

  Department copyWith({
    int? deptId,
    String? deptName,
  }) {
    return Department(
      deptId: deptId ?? this.deptId,
      deptName: deptName ?? this.deptName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'deptId': this.deptId,
      'deptName': this.deptName,
    };
  }

  factory Department.fromMap(Map<String, dynamic> map) {
    return Department(
      deptId: map['deptId'] as int,
      deptName: map['deptName'] as String,
    );
  }

//</editor-fold>
}