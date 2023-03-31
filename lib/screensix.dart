import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterTest extends StatelessWidget {
  const BackDropFilterTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Backdrop"),
      ),
      body: BackdropFilter(filter: ImageFilter.blur(
        sigmaX: 0.3,
        sigmaY: 0.3
      ),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        color: Colors.blue.withOpacity(0.1),
      ),
      ),
    );
  }
}
