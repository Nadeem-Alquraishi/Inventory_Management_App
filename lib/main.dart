import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_app/core/binding/dependency_injection.dart';
import 'package:inventory_app/core/constant/app_theme.dart';

import 'package:inventory_app/features/items/presentation/pages/home.dart';

void main() {
  
  InventoryBinding().dependencies();
  runApp(const InventoryApp());
}

class InventoryApp extends StatelessWidget {
  const InventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InventoryBinding(),
      debugShowCheckedModeBanner: false,
      title: 'Inventory App',
      theme: appTheme,
      home: HomePage(),
    );
  }
}
