class PatientDt {
  late int pId;
  late String pName;
  late String pDob;
  late String pAdd;
  late int pMobileNo;

//<editor-fold desc="Data Methods">

  PatientDt({
    required this.pId,
    required this.pName,
    required this.pDob,
    required this.pAdd,
    required this.pMobileNo,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PatientDt &&
          runtimeType == other.runtimeType &&
          pId == other.pId &&
          pName == other.pName &&
          pDob == other.pDob &&
          pAdd == other.pAdd &&
          pMobileNo == other.pMobileNo);

  @override
  int get hashCode =>
      pId.hashCode ^
      pName.hashCode ^
      pDob.hashCode ^
      pAdd.hashCode ^
      pMobileNo.hashCode;

  @override
  String toString() {
    return 'PatientDt{' +
        ' pId: $pId,' +
        ' pName: $pName,' +
        ' pDob: $pDob,' +
        ' pAdd: $pAdd,' +
        ' pMobileNo: $pMobileNo,' +
        '}';
  }

  PatientDt copyWith({
    int? pId,
    String? pName,
    String? pDob,
    String? pAdd,
    int? pMobileNo,
  }) {
    return PatientDt(
      pId: pId ?? this.pId,
      pName: pName ?? this.pName,
      pDob: pDob ?? this.pDob,
      pAdd: pAdd ?? this.pAdd,
      pMobileNo: pMobileNo ?? this.pMobileNo,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pId': this.pId,
      'pName': this.pName,
      'pDob': this.pDob,
      'pAdd': this.pAdd,
      'pMobileNo': this.pMobileNo,
    };
  }

  factory PatientDt.fromMap(Map<String, dynamic> map) {
    return PatientDt(
      pId: map['pId'] as int,
      pName: map['pName'] as String,
      pDob: map['pDob'] as String,
      pAdd: map['pAdd'] as String,
      pMobileNo: map['pMobileNo'] as int,
    );
  }

//</editor-fold>
}
