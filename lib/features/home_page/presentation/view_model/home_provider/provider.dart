import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../view/widgets/home_page_item.dart';

class HomePageProvider with ChangeNotifier {

  List<Color> colors = [
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.orangeAccent,
    Colors.orangeAccent,
  ];
  List<IconData> icons = [
    Icons.directions,
    Icons.work,
    Icons.person,
    Icons.device_hub_rounded,
    Icons.soap_sharp,
    Icons.error_outlined,
  ];
  List<String> texts = [
    'directions',
    'employees',
    'customers',
    'devices',
    'installations',
    'Malfunctions',
  ];
  late List<HomePageItem> items;

  void fetchHomeItems(){

    items = List<HomePageItem>.generate(6, (index) {

      return HomePageItem(

        icon: icons[index],
        color: colors[index],
        text: texts[index],
        index: index,
        isExpanded: false,
      );
    });

    notifyListeners();
  }

  void restAndSelectItem(int itemIndex){

    items = List<HomePageItem>.generate(6, (index) {


      return HomePageItem(

        icon: icons[index],
        color: colors[index],
        text: texts[index],
        index: index, isExpanded: itemIndex == index? true : false,
      );
    });

    notifyListeners();
  }
}
// notifyListeners();