import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controller/variable_controller.dart';
import 'package:get_x/view/other2.dart';

class Other extends StatelessWidget {
  Other({super.key});
  final VarController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            c.count += 2;
            Get.to(() => Other2());
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text("${c.count}"),
          ),
        ),
      ),
    );
  }
}
