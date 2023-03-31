import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice_two/screen_four.dart';
import 'package:getx_practice_two/screenfive.dart';
import 'package:getx_practice_two/screenthree.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen two"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Screen two"),
            InkWell(
              onTap: (){
                Get.to(ScreenThree());
              },
              child: Container(
                //height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(400)),
                  color: Colors.tealAccent,
                ),
                child: Padding(child: Text("Click"),
                padding: EdgeInsets.all(70),
                ),
              ),
            ),
            TextButton(
              child: Text("Screen four"),
              onPressed: (){
                Get.to(CustomContainer());
              },
            ),
            TextButton(
              child: Text("Screen five"),
              onPressed: (){
                Get.to(CustomContainerTwo());
              },
            )
          ],
        )
      ),
    );
  }
}
