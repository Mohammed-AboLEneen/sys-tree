import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:systree/features/onboarding/presentation/view/widgets/custom_button.dart';
import 'package:systree/features/onboarding/presentation/view/widgets/custom_pageview.dart';
import 'package:systree/features/onboarding/presentation/view/widgets/smooth_page_dots.dart';

import '../../../../cores/utils/images.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController pageController;
  double progress = 0;

  @override
  void initState() {
    super.initState();

    pageController = PageController()
      ..addListener(() {
        setState(() {
          progress = pageController.page ?? 0;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [


          TextButton(
              onPressed: (){

                pageController.animateToPage(3, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
              },
              child: Text('Skip', style: TextStyle(fontSize: 20.sp),)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .6,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .5,
                  child: PageView(
                    controller: pageController,
                    children: [
                      CustomPageView(
                        imageUrl: ImagesClass.fastLoadingImage,
                        text: 'unprecedented download speed',
                      ),
                      CustomPageView(
                        imageUrl: ImagesClass.qualityImage,
                        text: 'Download Quality',
                      ),
                      CustomPageView(
                        imageUrl: ImagesClass.supportImage,
                        text: 'Technical support',
                        padding: 0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding:
                  const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 20.0),
              child: Row(
                children: [
                  SmoothPageDots(
                    pageController: pageController,
                  ),
                  const Spacer(),
                  CustomIcon(
                    width: MediaQuery.of(context).size.width * .2,
                    height: MediaQuery.of(context).size.height * .04,
                    widget: Icon(Icons.arrow_forward_ios_outlined, color: Colors.white.withOpacity(.5),),
                    tap: () {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
