import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_app/features/items/presentation/controller/inventory_controller.dart';
import 'package:inventory_app/features/items/presentation/widgets/list_items.dart';
import 'package:inventory_app/features/items/presentation/widgets/search_items.dart';

class ItemsPage extends StatelessWidget {
  final InventoryController controller =
      Get.put(InventoryController(), permanent: true);

  ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Items'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 4,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.refreshData(),
          ),
        ],
      ),
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.white38, Colors.deepPurpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: SearchItems(controller: controller),
            ),
            Expanded(
              child: Obx(() {
                if (controller.isLoading.value) {
                  return const Center(
                      child:
                          CircularProgressIndicator(color: Colors.deepPurple));
                }

                if (controller.filteredItems.isEmpty) {
                  return const Center(
                    child: Text(
                      'No items found',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  );
                } else {
                  return ListItems(
                      controller: controller, deviceWidth: deviceWidth);
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}


