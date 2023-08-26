
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:systree/cores/utils/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>  MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: GoogleFonts.abelTextTheme(),
          useMaterial3: true,
          appBarTheme: AppBarTheme(

              systemOverlayStyle: SystemUiOverlayStyle(
                systemNavigationBarColor: Colors.blue.withOpacity(.2), // Navigation bar
                statusBarColor:  Colors.blue.withOpacity(.3), // Status bar
                  statusBarIconBrightness: Brightness.dark
              ),
          )
        ),
        routerConfig: RoutersCLass.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}



