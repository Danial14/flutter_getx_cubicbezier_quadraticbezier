import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx demo"),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(onPressed: (){
            Get.defaultDialog(title: "Getx deMo",
                confirm: ElevatedButton(onPressed: (){
                  print("confirm");
                  Get.back();
                },
                    child: Text("Confirm")
                ),
                onCancel: (){
                  print("cancel");
                },
              barrierDismissible: false
            );
          }, child: Text("Getx dialog")),
          TextButton(onPressed: (){
            Get.offNamed("/screentwo");

          },
          child: Text("Click"),
          ),
          OutlinedButton(
            onPressed: (){
              Get.bottomSheet(Container(decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(topRight: Radius.circular(15),
                topLeft: Radius.circular(15)
                ),
              ),
              child: Column(
                children: <Widget>[
                  Text("test")
                ],
              ),
              ));
            },
            child: Text("Bottom sheet"),
          )
        ],
      ))
    );
  }
}
