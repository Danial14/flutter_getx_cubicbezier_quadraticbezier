import 'package:flutter/material.dart';
import 'package:getx_practice_two/MyClipper.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clipper"),
      ),
      body: Stack(children: <Widget>[
        Opacity(opacity: 0.5,
          child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
          ),
        ),),
        Opacity(opacity: 0.5,
          child: ClipPath(
            clipper: MyClipper(),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.55,
            ),
          ),)
      ],)
    );
  }
}
