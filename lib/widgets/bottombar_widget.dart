// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_codelab_p2/classes.dart';
import 'package:flutter_codelab_p2/landing_page.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  final List<BottomBarModel> _bottomBarItems = bottomBarListItems;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_bottomBarItems.length, (index) {
          var barItemWidget = _bottomBarItems[index];
          return IconButton(
              onPressed: () {
                setState(() {
                  for (var element in _bottomBarItems) {
                    element.isSelected = element == barItemWidget;
                  }
                });
              },
              icon: Icon(
                barItemWidget.icon,
                color: barItemWidget.isSelected! ? mainYellow : Colors.grey,
              ));
        }),
      ),
    );
  }
}
