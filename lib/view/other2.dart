import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/variable_controller.dart';

class Other2 extends StatelessWidget {
  Other2({super.key});
  final VarController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            c.count += 2;
          },
          child: Container(
            height: 200,
            width: 200,
            color: Color.fromRGBO(253, 88, 203, 1),
            alignment: Alignment.center,
            child: Obx(() => Text("${c.count}")),
          ),
        ),
      ),
    );
  }
}
