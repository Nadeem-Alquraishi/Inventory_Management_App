// import 'package:dio/dio.dart';

// class ApiService {
//   final Dio dio = Dio();
//   static const String itemsApi =
//       "http://173.249.1.117:8095/van.dll/getvanalldata?cono=290&strno=1&case=4";
//   static const String quantityApi =
//       "http://173.249.1.117:8095/van.dll/getvanalldata?cono=290&strno=1&case=9";

//   Future<List<dynamic>> fetchItems() async {
//     final response = await dio.get(itemsApi);
//     return response.data;
//   }

//   Future<List<dynamic>> fetchQuantities() async {
//     final response = await dio.get(quantityApi);
//     return response.data;
//   }
// }

import 'package:dio/dio.dart';
import 'package:inventory_app/features/items/data/models/item_master.dart';
import 'package:inventory_app/features/items/data/models/quantity.dart';

class ApiService {
  final Dio dio = Dio();
  static const String itemsApi =
      "http://173.249.1.117:8095/van.dll/getvanalldata?cono=290&strno=1&case=4";
  static const String quantityApi =
      "http://173.249.1.117:8095/van.dll/getvanalldata?cono=290&strno=1&case=9";

  Future<List<ItemsMaster>> fetchItems() async {
    final response = await dio.get(itemsApi);
    if (response.statusCode == 200) {
      final List<ItemsMaster> items = [];
      for (var item in response.data['Items_Master']) {
        var item1 = ItemsMaster.fromJson(item ?? {});
        items.add(item1);
      }

      return items;
    } else {
      throw Exception('Failed to fetch items');
    }
  }

  Future<List<Quantity>> fetchQuantities() async {
    final response = await dio.get(quantityApi);
    if (response.statusCode == 200) {
      final List<Quantity> quantities = [];
      for (var quantity in response.data['SalesMan_Items_Balance']) {
        var quantity1 = Quantity.fromMap(quantity ?? {});
        quantities.add(quantity1);
      }
      return quantities;
    } else {
      throw Exception('Failed to fetch quantities');
    }
  }
}
