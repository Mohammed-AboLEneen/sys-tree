import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';



class CustomPageView extends StatelessWidget {
  final String text;
  final String imageUrl;
  final double? padding;
  const CustomPageView({super.key, required this.text, required this.imageUrl, this.padding});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding ?? 10),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(

              height: MediaQuery.of(context).size.height * .32,
              child: CircleAvatar(

                backgroundColor: Colors.blue,
                child: SvgPicture.asset(
                  imageUrl,
                  height: MediaQuery.of(context).size.height * .32,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * .15,
            ),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Align(

                  alignment: Alignment.center,
                  child: Text(
                    text,
                    style: GoogleFonts.playfairDisplay(fontSize: 20.w),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
