class WardDTO{
  late int wid;
  late String wardName;

//<editor-fold desc="Data Methods">

  WardDTO({
    required this.wid,
    required this.wardName,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WardDTO &&
          runtimeType == other.runtimeType &&
          wid == other.wid &&
          wardName == other.wardName);

  @override
  int get hashCode => wid.hashCode ^ wardName.hashCode;

  @override
  String toString() {
    return 'WardDTO{' + ' wid: $wid,' + ' wardName: $wardName,' + '}';
  }

  WardDTO copyWith({
    int? wid,
    String? wardName,
  }) {
    return WardDTO(
      wid: wid ?? this.wid,
      wardName: wardName ?? this.wardName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wid': this.wid,
      'wardName': this.wardName,
    };
  }

  factory WardDTO.fromMap(Map<String, dynamic> map) {
    return WardDTO(
      wid: map['wid'] as int,
      wardName: map['wardName'] as String,
    );
  }

//</editor-fold>
}