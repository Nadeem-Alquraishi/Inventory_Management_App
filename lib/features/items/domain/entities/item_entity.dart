// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItemEntity {
   String? COMAPNYNO;
  String? STOCKCODE;
  String? ItemOCode;
  String? QTY;
  String? ITEMNO;
  String? NAME;
  String? CATEOGRYID;
  String? ItemK;
  String? BARCODE;
  String? MINPRICE;
  String? ITEML;
  String? ISSUSPENDED;
  String? FD;
  String? ITEMHASSERIAL;
  String? ITEMPICSPATH;
  String? TAXPERC;
  String? ISAPIPIC;
  String? LSPRICE;
  ItemEntity({
    this.COMAPNYNO,
    this.STOCKCODE,
    this.ItemOCode,
    this.QTY,
    this.ITEMNO,
    this.NAME,
    this.CATEOGRYID,
    this.ItemK,
    this.BARCODE,
    this.MINPRICE,
    this.ITEML,
    this.ISSUSPENDED,
    this.FD,
    this.ITEMHASSERIAL,
    this.ITEMPICSPATH,
    this.TAXPERC,
    this.ISAPIPIC,
    this.LSPRICE,
  });






  ItemEntity copyWith({
    String? COMAPNYNO,
    String? STOCKCODE,
    String? ItemOCode,
    String? QTY,
    String? ITEMNO,
    String? NAME,
    String? CATEOGRYID,
    String? ItemK,
    String? BARCODE,
    String? MINPRICE,
    String? ITEML,
    String? ISSUSPENDED,
    String? FD,
    String? ITEMHASSERIAL,
    String? ITEMPICSPATH,
    String? TAXPERC,
    String? ISAPIPIC,
    String? LSPRICE,
  }) {
    return ItemEntity(
      COMAPNYNO: COMAPNYNO ?? this.COMAPNYNO,
      STOCKCODE: STOCKCODE ?? this.STOCKCODE,
      ItemOCode: ItemOCode ?? this.ItemOCode,
      QTY: QTY ?? this.QTY,
      ITEMNO: ITEMNO ?? this.ITEMNO,
      NAME: NAME ?? this.NAME,
      CATEOGRYID: CATEOGRYID ?? this.CATEOGRYID,
      ItemK: ItemK ?? this.ItemK,
      BARCODE: BARCODE ?? this.BARCODE,
      MINPRICE: MINPRICE ?? this.MINPRICE,
      ITEML: ITEML ?? this.ITEML,
      ISSUSPENDED: ISSUSPENDED ?? this.ISSUSPENDED,
      FD: FD ?? this.FD,
      ITEMHASSERIAL: ITEMHASSERIAL ?? this.ITEMHASSERIAL,
      ITEMPICSPATH: ITEMPICSPATH ?? this.ITEMPICSPATH,
      TAXPERC: TAXPERC ?? this.TAXPERC,
      ISAPIPIC: ISAPIPIC ?? this.ISAPIPIC,
      LSPRICE: LSPRICE ?? this.LSPRICE,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'COMAPNYNO': COMAPNYNO,
      'STOCKCODE': STOCKCODE,
      'ItemOCode': ItemOCode,
      'QTY': QTY,
      'ITEMNO': ITEMNO,
      'NAME': NAME,
      'CATEOGRYID': CATEOGRYID,
      'ItemK': ItemK,
      'BARCODE': BARCODE,
      'MINPRICE': MINPRICE,
      'ITEML': ITEML,
      'ISSUSPENDED': ISSUSPENDED,
      'F_D': FD,
      'ITEMHASSERIAL': ITEMHASSERIAL,
      'ITEMPICSPATH': ITEMPICSPATH,
      'TAXPERC': TAXPERC,
      'ISAPIPIC': ISAPIPIC,
      'LSPRICE': LSPRICE,
    };
  }

  factory ItemEntity.fromMap(Map<String, dynamic> map) {
    return ItemEntity(
      COMAPNYNO: map['COMAPNYNO'] != null ? map['COMAPNYNO'] as String : null,
      STOCKCODE: map['STOCKCODE'] != null ? map['STOCKCODE'] as String : null,
      ItemOCode: map['ItemOCode'] != null ? map['ItemOCode'] as String : null,
      QTY: map['QTY'] != null ? map['QTY'] as String : null,
      ITEMNO: map['ITEMNO'] != null ? map['ITEMNO'] as String : null,
      NAME: map['NAME'] != null ? map['NAME'] as String : null,
      CATEOGRYID: map['CATEOGRYID'] != null ? map['CATEOGRYID'] as String : null,
      ItemK: map['ItemK'] != null ? map['ItemK'] as String : null,
      BARCODE: map['BARCODE'] != null ? map['BARCODE'] as String : null,
      MINPRICE: map['MINPRICE'] != null ? map['MINPRICE'] as String : null,
      ITEML: map['ITEML'] != null ? map['ITEML'] as String : null,
      ISSUSPENDED: map['ISSUSPENDED'] != null ? map['ISSUSPENDED'] as String : null,
      FD: map['F_D'] != null ? map['F_D'] as String : null,
      ITEMHASSERIAL: map['ITEMHASSERIAL'] != null ? map['ITEMHASSERIAL'] as String : null,
      ITEMPICSPATH: map['ITEMPICSPATH'] != null ? map['ITEMPICSPATH'] as String : null,
      TAXPERC: map['TAXPERC'] != null ? map['TAXPERC'] as String : null,
      ISAPIPIC: map['ISAPIPIC'] != null ? map['ISAPIPIC'] as String : null,
      LSPRICE: map['LSPRICE'] != null ? map['LSPRICE'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemEntity.fromJson(String source) => ItemEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemEntity(COMAPNYNO: $COMAPNYNO, STOCKCODE: $STOCKCODE, ItemOCode: $ItemOCode, QTY: $QTY, ITEMNO: $ITEMNO, NAME: $NAME, CATEOGRYID: $CATEOGRYID, ItemK: $ItemK, BARCODE: $BARCODE, MINPRICE: $MINPRICE, ITEML: $ITEML, ISSUSPENDED: $ISSUSPENDED, FD: $FD, ITEMHASSERIAL: $ITEMHASSERIAL, ITEMPICSPATH: $ITEMPICSPATH, TAXPERC: $TAXPERC, ISAPIPIC: $ISAPIPIC, LSPRICE: $LSPRICE)';
  }

  @override
  bool operator ==(covariant ItemEntity other) {
    if (identical(this, other)) return true;
  
    return 
      other.COMAPNYNO == COMAPNYNO &&
      other.STOCKCODE == STOCKCODE &&
      other.ItemOCode == ItemOCode &&
      other.QTY == QTY &&
      other.ITEMNO == ITEMNO &&
      other.NAME == NAME &&
      other.CATEOGRYID == CATEOGRYID &&
      other.ItemK == ItemK &&
      other.BARCODE == BARCODE &&
      other.MINPRICE == MINPRICE &&
      other.ITEML == ITEML &&
      other.ISSUSPENDED == ISSUSPENDED &&
      other.FD == FD &&
      other.ITEMHASSERIAL == ITEMHASSERIAL &&
      other.ITEMPICSPATH == ITEMPICSPATH &&
      other.TAXPERC == TAXPERC &&
      other.ISAPIPIC == ISAPIPIC &&
      other.LSPRICE == LSPRICE;
  }

  @override
  int get hashCode {
    return COMAPNYNO.hashCode ^
      STOCKCODE.hashCode ^
      ItemOCode.hashCode ^
      QTY.hashCode ^
      ITEMNO.hashCode ^
      NAME.hashCode ^
      CATEOGRYID.hashCode ^
      ItemK.hashCode ^
      BARCODE.hashCode ^
      MINPRICE.hashCode ^
      ITEML.hashCode ^
      ISSUSPENDED.hashCode ^
      FD.hashCode ^
      ITEMHASSERIAL.hashCode ^
      ITEMPICSPATH.hashCode ^
      TAXPERC.hashCode ^
      ISAPIPIC.hashCode ^
      LSPRICE.hashCode;
  }
}
