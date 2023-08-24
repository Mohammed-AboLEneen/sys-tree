
import 'package:flutter/cupertino.dart';

class BottomCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double w = size.width;
    double h = size.height;

    path.moveTo(0, h);
    path.quadraticBezierTo(w * .05, h * .4, w * .18, 0);
    path.quadraticBezierTo(w * .5, h * .25, w * .85, 0);
    path.quadraticBezierTo(w * .95, h * .4, w, h);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
