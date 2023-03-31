import 'package:flutter/material.dart';
import 'package:getx_practice_two/clippertwo.dart';

class CustomContainerTwo extends StatelessWidget {
  const CustomContainerTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cubic"),
      ),
      body: ClipPath(
        child: Container(
          width: size.width,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.green
          ),
        ),
        clipper: CubicClipper(),
      ),
    );
  }
}
