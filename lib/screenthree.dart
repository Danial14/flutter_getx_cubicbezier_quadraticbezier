import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen three"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(padding: EdgeInsets.all(30),
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Center(child: Card(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
            ),
            Positioned(child: Image.asset("assets/images/laptop.png", width: 100, height: 100,),
            top: 40,
              left: MediaQuery.of(context).size.width * 0.6,
            )
          ],
        ),),
      ),
    );
  }
}
