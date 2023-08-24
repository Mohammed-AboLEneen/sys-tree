import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:systree/cores/utils/images.dart';

import 'buttom_customclipper.dart';
import 'top_custom_painter.dart';
import 'custom_textformfield.dart';
import 'top_customclipper.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .04),
        child: CustomScrollView(
          slivers: [

            SliverFillRemaining(

              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .4,
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: TopCustomClipper(),
                          child: Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.blue, Colors.white])),
                            height: MediaQuery.of(context).size.height * .4,
                            width: MediaQuery.of(context).size.width,
                            child: CustomPaint(
                              painter: MyPainter(),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: MediaQuery.of(context).size.width * .07,
                          child: SvgPicture.asset(
                            ImagesClass.loginImage,
                            width: MediaQuery.of(context).size.width * .8,
                            height: MediaQuery.of(context).size.height * .3,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .04,
                  ),
                  Text(
                    'Sign In',
                    style: GoogleFonts.playfairDisplay(
                        fontSize: MediaQuery.of(context).size.height * .05),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .04,
                  ),
                  CustomTextField(
                    controller: emailController,
                    h: MediaQuery.of(context).size.height * .09,
                    hint: 'xxx@gmail.com',
                    lable: 'Email',

                  ),

                  const SizedBox(height: 10,),
                  CustomTextField(
                    controller: passwordController,
                    h: MediaQuery.of(context).size.height * .09,
                    hint: '123456',
                    lable: 'Password',

                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.withOpacity(.5),
                    ),
                    child: Text(
                      'Login',
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white.withOpacity(.7),
                          fontSize: MediaQuery.of(context).size.height * .03),
                    ),
                  ),

                  SizedBox(
                      height: MediaQuery.of(context).size.height * .1,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipPath(
                            clipper: BottomCustomClipper(),
                            child: Container(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      stops: [0, .8],
                                      colors: [Colors.blue, Colors.blueGrey])),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Visit Our Website ', style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height * .025
                                )),
                                Text(
                                  'Here',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white.withOpacity(.5),
                                      fontSize: MediaQuery.of(context).size.height * .025
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}


