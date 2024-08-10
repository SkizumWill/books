import 'package:flutter/material.dart';

class CustomClipperWidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();

    path.lineTo(0, h);
    path.lineTo(w, h); // use to draw the line
    path.lineTo(w, 0);
    path.quadraticBezierTo(
      w * 0.5,
      h - 100,
      w,
      h,
    ); // using graph to represent point
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
