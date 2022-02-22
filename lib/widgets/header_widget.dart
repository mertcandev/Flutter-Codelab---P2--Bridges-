// ignore_for_file: prefer_const_constructors, prefer_const_declarations, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_codelab_p2/landing_page.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Where do you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "want to go?",
                style: TextStyle(color: mainYellow, fontSize: 30),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: lightGray),
            margin: EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 10),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
