import 'package:flutter/cupertino.dart';

class TopCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path = getPathValues(path, size);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}



Path getPathValues(Path path, Size size){

  double w = size.width;
  double h = size.height;
  path.lineTo(0, h * .8);
  path.quadraticBezierTo(w * .2, h * .6, w * .5, h * .7);
  path.quadraticBezierTo(w * .7, h * .8, w * .94, h * .45);
  path.quadraticBezierTo(w, h * .35, w, 0);
  path.lineTo(w, 0);

  return path;
}