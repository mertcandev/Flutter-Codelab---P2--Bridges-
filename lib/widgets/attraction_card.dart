// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_codelab_p2/classes.dart';
import 'package:flutter_codelab_p2/landing_page.dart';
import 'package:flutter_codelab_p2/widgets/details_page.dart';

class AttractionCard extends StatelessWidget {
  AttractionModel? attractionModel;
  AttractionCard({this.attractionModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(selectedModel: attractionModel)));
      },
      child: Container(
        width: 180,
        margin: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(attractionModel!.imgPath!),
                      fit: BoxFit.cover)),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.5)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    attractionModel!.name!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    attractionModel!.location!,
                    style: TextStyle(color: mainYellow),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
