import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_app/features/items/presentation/pages/items_page.dart';
import 'package:inventory_app/features/items/presentation/widgets/button_stander.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: screenSize.width * 0.06,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: constraints.maxWidth * 0.6,
                  height: constraints.maxHeight * 0.08,
                  child: ButtonStander(
                    onTap: () {
                      Get.to(() => ItemsPage());
                    },
                    text: 'Get Item',
                    backgroundColor: Colors.deepPurple,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
