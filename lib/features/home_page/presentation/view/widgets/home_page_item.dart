import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/home_provider/provider.dart';

class HomePageItem extends StatefulWidget {
  const HomePageItem(
      {super.key,
        required this.icon,
        required this.color,
        required this.text,
        required this.index, required this.isExpanded});

  final IconData icon;
  final Color color;
  final String text;
  final int index;
  final bool isExpanded;

  @override
  State<HomePageItem> createState() => _HomePageItemState();
}

class _HomePageItemState extends State<HomePageItem> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageProvider>(builder: (_,model,__){

      return  GestureDetector(
        onTapCancel: () {

          model.restAndSelectItem(widget.index);
        },

        onTap: (){
          model.fetchHomeItems();
        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: widget.isExpanded
                    ? MediaQuery.of(context).size.height * .19
                    : MediaQuery.of(context).size.height * .18,
                width: widget.isExpanded
                    ? MediaQuery.of(context).size.width * .37
                    : MediaQuery.of(context).size.width * .37,
                child: Card(
                  color: Colors.white,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          widget.text,
                          style: TextStyle(
                              fontSize:
                              widget.isExpanded
                                  ? MediaQuery.of(context).size.height * .029
                                  : MediaQuery.of(context).size.height * .027),
                        ),
                      )),
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: MediaQuery.of(context).size.height * .11,
              child: AnimatedContainer(
                height: widget.isExpanded
                    ? MediaQuery.of(context).size.width * .23
                    : MediaQuery.of(context).size.width * .22,
                width: widget.isExpanded
                    ? MediaQuery.of(context).size.width * .23
                    : MediaQuery.of(context).size.width * .22,
                decoration: BoxDecoration(
                    color: widget.color, borderRadius: BorderRadius.circular(20)),
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  widget.icon,
                  size: widget.isExpanded
                      ? MediaQuery.of(context).size.height * .07
                      : MediaQuery.of(context).size.height * .05,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
