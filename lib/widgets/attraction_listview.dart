import 'package:flutter/material.dart';
import 'package:flutter_codelab_p2/classes.dart';
import 'package:flutter_codelab_p2/widgets/attraction_card.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 10),
          itemCount: attractions.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            AttractionModel currentAttraction = attractions[index];
            return AttractionCard(
              attractionModel: currentAttraction,
            );
          }),
    );
  }
}
