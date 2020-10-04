import 'package:flutter/material.dart';

import '../ui_utils/constants.dart';
import '../ui_utils/heading.dart';
import '../ui_utils/horizontal_square_cards.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final colorList = <Color>[
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.blue,
    Colors.black,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBackgroundDecor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 9.0, horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Heading(heading: 'Discover'),
                ),
                HorizontalSquareCards(
                  colorList: colorList,
                  headingText: 'Contiue Watching',
                  seeMore: false,
                ),
                HorizontalSquareCards(
                  colorList: colorList,
                  headingText: 'Categories',
                  seeMore: true,
                ),
                HorizontalSquareCards(
                  colorList: colorList,
                  headingText: 'Recommended for you',
                  seeMore: true,
                ),
                HorizontalSquareCards(
                  colorList: colorList,
                  headingText: 'Categories',
                  seeMore: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
