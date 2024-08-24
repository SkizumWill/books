import 'package:flutter/material.dart';

class CustomClipperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 2);
    path.cubicTo(size.width / 4, 3 * (size.height / 2), 
    3 * (size.width / 4),
        size.height / 2, size.width, 
        size.height * 0.9);
    path.lineTo(size.width, 0);
   
    // use to draw the line

    // using graph to represent point
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
