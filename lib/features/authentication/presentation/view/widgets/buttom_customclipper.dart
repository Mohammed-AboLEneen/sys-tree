
import 'package:flutter/cupertino.dart';

class BottomCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double w = size.width;
    double h = size.height;

    path.moveTo(0, h);
    path.quadraticBezierTo(w * .5,h * -.7, w , h);


    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
