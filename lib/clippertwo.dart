import 'package:flutter/material.dart';

class CubicClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    print("CubicClipper height: ${size.height}");
    final height = size.height;
    final width = size.width;
    final path = Path();
    path.lineTo(0, height);
    final firstControlPoint = Offset(width * 0.5, height - 80);
    final secondControlPoint = Offset(width * 0.6, height + 30);
    final endPoint = Offset(width, height - 20);
    path.cubicTo(firstControlPoint.dx, firstControlPoint.dy, secondControlPoint.dx, secondControlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}