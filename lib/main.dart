import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/variable_controller.dart';
import 'package:get_x/view/other.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final VarController c = Get.put(VarController());

  @override
  Widget build(BuildContext context) {
    log("In MainApp build ");

    return GetMaterialApp(
      //enableLog: false,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('Hello World! = ${c.count}')),
              GestureDetector(
                onTap: () {
                  c.count.value = 1;
                  //Get.changeTheme(ThemeData.dark());
                  Get.to(() => Other());
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(60),
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
