import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {

  final String? hint;
  final String? lable;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;
  final double h;
  final TextEditingController controller;

  const CustomTextField(
      {super.key,
        this.hint,
        this.padding,
        this.maxLines,
        required this.controller, required this.h, this.lable});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextFormField(
          textInputAction: TextInputAction.next,
          textAlignVertical: TextAlignVertical.top,
          validator: (value) {
            if (value!.isEmpty) {
              return 'This Field Is Required';
            }
            return null;
          },
          controller: controller,
          maxLines: maxLines,

          style: TextStyle(
              color: Colors.black.withOpacity(.8), // Set the color of the text
              fontSize: h * .3),
          decoration: InputDecoration(
              hintText: hint,
              label: Text(lable ?? '??'),
              hintStyle: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 15.sp),
              contentPadding: padding,


              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.7),
                    width: 2.0,
                    // Set the thickness of the underline
                    style: BorderStyle.solid,
                  )))
      ),
    );
  }
}
