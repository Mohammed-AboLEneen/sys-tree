import 'package:flutter/material.dart';


class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      required this.widget,
      this.tap,
      required this.height,
      required this.width});

  final void Function()? tap;
  final Widget widget;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(70),
      color: Colors.transparent,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: tap,
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.purple, Colors.blue], // Define your gradient colors
              begin: Alignment.topLeft, // Set the start point of the gradient
              end: Alignment.bottomRight, // Set the end point of the gradient
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
              width: width,
              height: height,
              child: widget,
            ),
          ),
        ),
      ),
    );
  }
}
