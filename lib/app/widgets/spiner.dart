import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MySpiner extends StatelessWidget {
  const MySpiner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: const [
          Center(
            child: SpinKitRotatingCircle(
              color: Colors.orange,
              size: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
