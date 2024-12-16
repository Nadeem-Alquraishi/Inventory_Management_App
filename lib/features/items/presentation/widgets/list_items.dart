import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:inventory_app/features/items/presentation/controller/inventory_controller.dart';
import 'package:inventory_app/features/items/presentation/pages/item_info.dart';

class ListItems extends StatelessWidget {
  const ListItems({
    super.key,
    required this.controller,
    required this.deviceWidth,
  });

  final InventoryController controller;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: controller.filteredItems.length,
      itemBuilder: (context, index) {
        final item = controller.filteredItems[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepPurple.shade100,
                      child:
                          const Icon(Icons.inventory, color: Colors.deepPurple),
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
}
