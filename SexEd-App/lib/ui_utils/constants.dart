import 'package:flutter/material.dart';

const kPrimaryBackgroundColor = Color(0xFFE8E8FF);
const kSecondaryBackgroundColor = Color(0xFFFEEDEA);

const kBackgroundDecor = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      //colors: [Colors.black, Colors.white]
      colors: [kPrimaryBackgroundColor, kSecondaryBackgroundColor],
    )
);

const kButtonColor = Color(0xFF616AD2);
const kAuthPurpleColor = Color(0xFF6D75E9);
const kLogoColor = Color(0xFFEB5757);