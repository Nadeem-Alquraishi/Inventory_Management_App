import 'package:inventory_app/features/items/data/models/item_master.dart';
import 'package:inventory_app/features/items/data/models/quantity.dart';
import 'package:inventory_app/features/items/domain/entities/item_entity.dart';

List<ItemEntity> mergeData(
  List<ItemsMaster> items,
  List<Quantity> quantities,
) {
  List<ItemEntity> mergedData = [];

  for (var item in items) {
    final matchingQuantity = quantities.firstWhere(
      (quantity) => quantity.COMAPNYNO == item.COMAPNYNO,
    );

    final mergedItem = ItemEntity(
      COMAPNYNO: item.COMAPNYNO,
      STOCKCODE: matchingQuantity.STOCKCODE,
      ItemOCode: matchingQuantity.ItemOCode,
      QTY: matchingQuantity.QTY,
      ITEMNO: item.ITEMNO,
      NAME: item.NAME,
      CATEOGRYID: item.CATEOGRYID,
      ItemK: item.ItemK,
      BARCODE: item.BARCODE,
      MINPRICE: item.MINPRICE,
      ITEML: item.ITEML,
      ISSUSPENDED: item.ISSUSPENDED,
      FD: item.FD,
      ITEMHASSERIAL: item.ITEMHASSERIAL,
      ITEMPICSPATH: item.ITEMPICSPATH,
      TAXPERC: item.TAXPERC,
      ISAPIPIC: item.ISAPIPIC,
      LSPRICE: item.LSPRICE,
    );

    mergedData.add(mergedItem);
  }

  return mergedData;
}
