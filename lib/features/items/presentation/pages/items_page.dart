import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_app/features/items/presentation/controller/inventory_controller.dart';
import 'package:inventory_app/features/items/presentation/widgets/item_info.dart';

class ItemsPage extends StatelessWidget {
  final InventoryController controller =
      Get.put(InventoryController(), permanent: true);

  ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.refreshData();
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
        )),
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
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(
                child: CircularProgressIndicator(color: Colors.deepPurple));
          }

          if (controller.inventoryData.isEmpty) {
            return const Center(
              child: Text(
                'No items found',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          } else {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: controller.inventoryData.length,
              itemBuilder: (context, index) {
                final item = controller.inventoryData[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),
                    onTap: () {
                      Get.to(() => ItemInfo(item: item));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple.shade100,
                              child: const Icon(Icons.inventory,
                                  color: Colors.deepPurple),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.NAME ?? 'Unnamed Item',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: deviceWidth * 0.05,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    'Quantity: ${item.QTY ?? 0}',
                                    style: TextStyle(
                                      fontSize: deviceWidth * 0.04,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Item $index',
                              style: TextStyle(
                                fontSize: deviceWidth * 0.04,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        }),
      ),
    );
  }
}
