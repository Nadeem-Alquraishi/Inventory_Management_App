import 'dart:developer';

import 'package:get/get.dart';
import 'package:inventory_app/features/items/data/src/api_service.dart';
import 'package:inventory_app/features/items/data/repo/database_service.dart';
import 'package:inventory_app/features/items/domain/entities/item_entity.dart';
import 'package:inventory_app/features/items/domain/usecases/merge_data.dart';

class InventoryController extends GetxController {
  final RxList<ItemEntity> inventoryData = RxList();
  var isLoading = false.obs;

  final ApiService apiService = ApiService();
  final DatabaseService dbHelper = DatabaseService.instance;

  Future<void> refreshData() async {
    try {
      isLoading(true);

      final items = await apiService.fetchItems();
      final quantities = await apiService.fetchQuantities();

      if (items.isEmpty || quantities.isEmpty) {
        throw Exception('API returned empty data');
      }

      final mergedData = mergeData(items, quantities);

      if (mergedData.isEmpty) {
        throw Exception('No data to save');
      }

      await dbHelper.insertData(mergedData);

      inventoryData.value = await dbHelper.fetchData();
    } catch (e) {
      log(e.toString());
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading(false);
    }
    update();
  }

  @override
  void onInit() {
    refreshData();
    super.onInit();
  }
}
