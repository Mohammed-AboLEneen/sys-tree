import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:systree/cores/utils/images.dart';
import 'package:systree/cores/utils/routers.dart';

import 'buttom_customclipper.dart';
import 'top_custom_painter.dart';
import 'custom_textformfield.dart';
import 'top_customclipper.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody>
    with SingleTickerProviderStateMixin {
  final TextEditingController emailController = TextEditingController(text: 'mohmedhty@gmail.com');
  final TextEditingController passwordController = TextEditingController(text: '123456');

  late AnimationController animationController;
  late Animation<double> opacityAnimation;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double textFieldHeight = MediaQuery.of(context).size.height * .09;

    return Scaffold(
      body: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .04),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                  hasScrollBody: false,
                  child: AnimatedBuilder(
                    animation: opacityAnimation,
                    builder: (_, __) {
                      return Opacity(
                        opacity: opacityAnimation.value,
                        child: Form(
                          autovalidateMode: autoValidateMode,
                          key: formKey,
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
                                                colors: [
                                              Colors.blue,
                                              Colors.white
                                            ])),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .4,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: CustomPaint(
                                          painter: MyPainter(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: MediaQuery.of(context).size.width *
                                          .07,
                                      child: SvgPicture.asset(
                                        ImagesClass.loginImage,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .8,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .3,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .04,
                              ),
                              Text(
                                'Sign In',
                                style: GoogleFonts.playfairDisplay(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            .04),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .04,
                              ),
                              CustomTextField(
                                controller: emailController,
                                h: MediaQuery.of(context).size.height * .09,
                                hint: 'xxx@gmail.com',
                                lable: 'Email',
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * .02),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextField(
                                controller: passwordController,
                                h: MediaQuery.of(context).size.height * .09,
                                hint: '123456',
                                lable: 'Password',
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.height * .02),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .04,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    context.push(RoutersCLass.homePage);
                                  } else {
                                    autoValidateMode = AutovalidateMode.always;
                                    setState(() {

                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.withOpacity(.5),
                                ),
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.white.withOpacity(.7),
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              .03),
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .1,
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
                                                  stops: [
                                                0,
                                                .8
                                              ],
                                                  colors: [
                                                Colors.blue,
                                                Colors.blueGrey
                                              ])),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text('Visit Our Website ',
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            .022)),
                                            Text(
                                              'Here',
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  color: Colors.white
                                                      .withOpacity(.5),
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height *
                                                          .022),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                  ))
            ],
          )),
    );
  }
}
