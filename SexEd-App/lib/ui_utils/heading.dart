import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    @required this.heading,
  });

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 33,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
