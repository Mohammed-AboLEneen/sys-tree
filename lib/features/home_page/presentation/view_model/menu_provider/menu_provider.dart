import 'package:flutter/material.dart';

class MenuProvider extends ChangeNotifier{

  String? selectedItemTitle;

  List<String> listTitles1 = [

    'Control Board',
    'Connection',
    'Devices Type',
    'Directions',
    'Clients',
    'Malfunctions'
  ];

  List<String> listTitles2 = [

    'History',
    'Notifications'
  ];

  List<IconData> listIcons1 = [

    Icons.keyboard_control_outlined,
    Icons.directions,
    Icons.device_hub_rounded,
    Icons.connecting_airports_outlined,
    Icons.person_pin_circle_rounded,
    Icons.error
  ];

  List<IconData> listIcons2 = [

    Icons.history,
    Icons.notification_important,
  ];

  void changeSelectedIndex(String newSelectedItemTitle){

    selectedItemTitle = newSelectedItemTitle;
    notifyListeners();
  }

}