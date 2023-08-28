import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:systree/features/authentication/presentation/view/widgets/home_menu.dart';
import 'package:systree/features/home_page/presentation/view/widgets/home_page_body.dart';
import '../view_model/home_provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomePageProvider()..fetchHomeItems(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1D1B31),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.white,
              )),
        ),
        body: const HomePageBody(),
        drawer: const HomeMenu(),
      ),
    );
  }
}
