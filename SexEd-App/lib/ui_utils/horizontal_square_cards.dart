import 'package:flutter/material.dart';

class HorizontalSquareCards extends StatelessWidget {
  const HorizontalSquareCards({
    Key key,
    @required this.colorList,
    @required this.headingText,
    @required this.seeMore,
  }) : super(key: key);

  final List<Color> colorList;
  final String headingText;
  final bool seeMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    headingText,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(left: 18.0),
                  width: MediaQuery.of(context).size.width * 0.84,
                  color: colorList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
