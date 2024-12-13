// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemsMaster {
  String? COMAPNYNO;
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

  ItemsMaster({
    this.COMAPNYNO,
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
  ItemsMaster.fromJson(Map<String, dynamic> json) {
    COMAPNYNO = json['COMAPNYNO']?.toString();
    ITEMNO = json['ITEMNO']?.toString();
    NAME = json['NAME']?.toString();
    CATEOGRYID = json['CATEOGRYID']?.toString();
    ItemK = json['ItemK']?.toString();
    BARCODE = json['BARCODE']?.toString();
    MINPRICE = json['MINPRICE']?.toString();
    ITEML = json['ITEML']?.toString();
    ISSUSPENDED = json['ISSUSPENDED']?.toString();
    FD = json['F_D']?.toString();
    ITEMHASSERIAL = json['ITEMHASSERIAL']?.toString();
    ITEMPICSPATH = json['ITEMPICSPATH']?.toString();
    TAXPERC = json['TAXPERC']?.toString();
    ISAPIPIC = json['ISAPIPIC']?.toString();
    LSPRICE = json['LSPRICE']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['COMAPNYNO'] = COMAPNYNO;
    data['ITEMNO'] = ITEMNO;
    data['NAME'] = NAME;
    data['CATEOGRYID'] = CATEOGRYID;
    data['ItemK'] = ItemK;
    data['BARCODE'] = BARCODE;
    data['MINPRICE'] = MINPRICE;
    data['ITEML'] = ITEML;
    data['ISSUSPENDED'] = ISSUSPENDED;
    data['F_D'] = FD;
    data['ITEMHASSERIAL'] = ITEMHASSERIAL;
    data['ITEMPICSPATH'] = ITEMPICSPATH;
    data['TAXPERC'] = TAXPERC;
    data['ISAPIPIC'] = ISAPIPIC;
    data['LSPRICE'] = LSPRICE;
    return data;
  }
}


class ListItemMaster {
  
  List<ItemsMaster> items ;
  ListItemMaster({
    required this.items,
  });
  factory ListItemMaster.fromJson(List<dynamic> json) {
    return ListItemMaster(items: json.map((e) => ItemsMaster.fromJson(e)).toList());
  }
}
