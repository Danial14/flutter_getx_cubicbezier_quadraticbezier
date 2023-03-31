import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.6);
    var firstControlPointStart = Offset(size.width * 0.2, size.height * 0.6);
    var firstEndPoint = Offset(size.width * 0.4, size.height * 0.6 - 30);
    var secondControlPointStart = Offset(size.width * 0.6, size.height * 0.6 - 70);
    var secondPointEnd = Offset(size.width, size.height * 0.6);
    path.quadraticBezierTo(firstControlPointStart.dx, firstControlPointStart.dy, firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPointStart.dx, secondControlPointStart.dy, secondPointEnd.dx, secondPointEnd.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
}