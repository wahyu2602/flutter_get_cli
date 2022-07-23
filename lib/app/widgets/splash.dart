import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          // ignore: sized_box_for_whitespace
          child: Container(
            width: Get.width * 0.5,
            height: Get.height * 0.5,
            child: Image.asset("assets/logo/logo.png"),
          ),
        ),
      ),
    );
  }
}
