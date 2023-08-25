import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/home_provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;


    return ChangeNotifierProvider(
      create: (BuildContext context) => HomePageProvider()..fetchHomeItems(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1D1B31),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                ))
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: h *.04,
              ),
            ),
            SliverToBoxAdapter(
              child: Consumer<HomePageProvider>(
                builder: (_, model, __) {
                  return GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 4 / 4.4,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    children: model.items,
                  );
                },
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              sliver: SliverToBoxAdapter(
                child: Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'SYS TREE',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'شكاوي و الاقتراح',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height *.05,
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    'تقييم التطبيق',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            const SliverToBoxAdapter(
              child: Align(

                alignment: Alignment.center,
                child: Text(
                  'POWERED BY Mohammed Elsharkawy & LEADER GROUP © 2023',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
          ],
        ),
      )
    );
  }
}


