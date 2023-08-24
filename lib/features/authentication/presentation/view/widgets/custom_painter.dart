import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customclipper.dart';

class MyPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {


    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth=10.0
      ..color = Colors.blue.withOpacity(.2);

    // Draw a red circle
    Path path = Path();
    path = getPathValues(path, size);

    path.close();

    // Draw a green rectangle
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}