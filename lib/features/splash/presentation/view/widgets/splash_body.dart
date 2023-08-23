import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../cores/utils/images.dart';
import '../../../../../cores/utils/routers.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    super.initState();

    animation();
    futureNavigate();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
            ),
            SizedBox(
              width: 40,
              height: 200,
              child: CircleAvatar(
                  child: SvgPicture.asset(
                ImagesClass.logoImage,
                height: MediaQuery.of(context).size.height * .3,
                width: 40,
              )),
            ),
            SizedBox(
              height: 30.h,
            ),
            AnimatedBuilder(
                animation: _slideAnimation,
                builder: (context, child) {
                  return SlideTransition(
                    position: _slideAnimation,
                    child: Opacity(
                      opacity: _animationController.value,
                      child: Text(
                        'Sys Tree',
                        style: TextStyle(
                            fontSize: 30.sp, fontStyle: FontStyle.italic),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }),
            const Spacer(),
            AnimatedBuilder(
              animation: opacityAnimation,
              builder: (_, __) {
                return Opacity(
                  opacity: opacityAnimation.value,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 25.0.h),
                    child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Developed By LEADER GROUP EGYPT',
                          style: TextStyle(fontSize: 15),
                        )),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void animation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Define the slide animation using Tween and CurvedAnimation
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(_animationController);

    opacityAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );

    _animationController.forward();
  }

  void futureNavigate() {
    Future.delayed(const Duration(seconds: 5), () {
      context.push(RoutersCLass.onBoardingPage);
    });
  }
}
