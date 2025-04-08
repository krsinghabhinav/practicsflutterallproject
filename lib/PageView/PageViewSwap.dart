import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'PageViewcontroller.dart';

class SwipeControlledPageView extends StatelessWidget {
  final Pageviewcontroller controller = Get.put(Pageviewcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Swipe Controlled PageView")),
      body: Column(
        children: [
          // Toggle Switch to Enable/Disable Swipe
          Obx(() => SwitchListTile(
                title: Text("Enable Swipe"),
                value: controller.isSwipeEnabled.value,
                onChanged: (value) {
                  controller.toggleswap(value);
                },
              )),
          Expanded(
            child: Obx(() => PageView(
                  physics: controller.isSwipeEnabled.value
                      ? AlwaysScrollableScrollPhysics() // Enable swipe
                      : NeverScrollableScrollPhysics(), // Disable swipe
                  children: [
                    Center(child: Text("Page 1", style: TextStyle(fontSize: 24))),
                    Center(child: Text("Page 2", style: TextStyle(fontSize: 24))),
                    Center(child: Text("Page 3", style: TextStyle(fontSize: 24))),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
