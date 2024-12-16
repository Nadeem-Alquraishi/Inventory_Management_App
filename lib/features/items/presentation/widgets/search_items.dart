import 'package:flutter/material.dart';
import 'package:inventory_app/features/items/presentation/controller/inventory_controller.dart';

class SearchItems extends StatelessWidget {
  const SearchItems({
    super.key,
    required this.controller,
  });

  final InventoryController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => controller.filterItems(value),
      decoration: InputDecoration(
        hintText: 'Search items...',
        prefixIcon:
            const Icon(Icons.search, color: Colors.deepPurple),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}