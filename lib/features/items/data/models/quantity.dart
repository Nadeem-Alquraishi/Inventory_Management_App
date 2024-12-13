// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Quantity {
  String? COMAPNYNO;
  String? STOCKCODE;
  String? ItemOCode;
  String? QTY;
  Quantity({
    this.COMAPNYNO,
    this.STOCKCODE,
    this.ItemOCode,
    this.QTY,
  });

  Quantity copyWith({
    String? COMAPNYNO,
    String? STOCKCODE,
    String? ItemOCode,
    String? QTY,
  }) {
    return Quantity(
      COMAPNYNO: COMAPNYNO ?? this.COMAPNYNO,
      STOCKCODE: STOCKCODE ?? this.STOCKCODE,
      ItemOCode: ItemOCode ?? this.ItemOCode,
      QTY: QTY ?? this.QTY,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'COMAPNYNO': COMAPNYNO,
      'STOCKCODE': STOCKCODE,
      'ItemOCode': ItemOCode,
      'QTY': QTY,
    };
  }

  factory Quantity.fromMap(Map<String, dynamic> map) {
    return Quantity(
      COMAPNYNO: map['COMAPNYNO'] != null ? map['COMAPNYNO'] as String : null,
      STOCKCODE: map['STOCKCODE'] != null ? map['STOCKCODE'] as String : null,
      ItemOCode: map['ItemOCode'] != null ? map['ItemOCode'] as String : null,
      QTY: map['QTY'] != null ? map['QTY'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Quantity.fromJson(String source) =>
      Quantity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Quantity(COMAPNYNO: $COMAPNYNO, STOCKCODE: $STOCKCODE, ItemOCode: $ItemOCode, QTY: $QTY)';
  }

  @override
  bool operator ==(covariant Quantity other) {
    if (identical(this, other)) return true;

    return other.COMAPNYNO == COMAPNYNO &&
        other.STOCKCODE == STOCKCODE &&
        other.ItemOCode == ItemOCode &&
        other.QTY == QTY;
  }

  @override
  int get hashCode {
    return COMAPNYNO.hashCode ^
        STOCKCODE.hashCode ^
        ItemOCode.hashCode ^
        QTY.hashCode;
  }
}
