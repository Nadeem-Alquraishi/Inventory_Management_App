import 'package:get/get.dart';
import 'package:inventory_app/features/items/presentation/controller/inventory_controller.dart';


class InventoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InventoryController>(() => InventoryController());
  }
}
