// ignore_for_file: prefer_const_declarations, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_codelab_p2/widgets/attraction_listview.dart';
import 'package:flutter_codelab_p2/widgets/bottombar_widget.dart';
import 'package:flutter_codelab_p2/widgets/header_widget.dart';

final Color mainYellow =  Color(0xFFFFB02F);
final Color primaryGray =  Color(0xFF313131);
final Color secondaryGray =  Color(0xFF1C1C1C);
final Color lightGray =  Color(0xFF3B3B3B);

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryGray,
          iconTheme: IconThemeData(color: mainYellow),
          title: Center(
            child: Icon(
              Icons.airplanemode_on,
              color: mainYellow,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_on_outlined,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: mainYellow,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.airplanemode_on,
              size: 80,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [primaryGray, secondaryGray],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderWidget(),
              AttractionListView(),
              BottomBarWidget()
            ],
          ),
        ));
  }
}
