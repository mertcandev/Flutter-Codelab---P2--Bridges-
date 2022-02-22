// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_codelab_p2/classes.dart';
import 'package:flutter_codelab_p2/landing_page.dart';

class DetailsPage extends StatelessWidget {
  AttractionModel? selectedModel;

  DetailsPage({this.selectedModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(selectedModel!.imgPath!),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  selectedModel!.name!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  selectedModel!.location!,
                  style: TextStyle(color: mainYellow),
                ),
                SizedBox(height: 20),
                Text(
                  selectedModel!.description!,
                  style: TextStyle(color: Colors.white.withOpacity(0.7)),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("View Comments",
                          style: TextStyle(color: Colors.white)),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: InkWell(
                        splashColor: Colors.black.withOpacity(0.1),
                        highlightColor: Colors.black.withOpacity(0.2),
                        onTap: () {},
                        child: Container(
                          color: mainYellow,
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 20, right: 20),
                          child: Text(
                            "Use Itinerary",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: mainYellow),
            title: Center(
                child: Icon(
              Icons.airplanemode_on,
              color: mainYellow,
            )),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: mainYellow,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
