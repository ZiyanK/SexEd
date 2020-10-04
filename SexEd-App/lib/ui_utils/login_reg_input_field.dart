import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginRegInputField extends StatelessWidget {

  final keyboardInputType;
  final hintText;
  final onChanged;
  final obscureText;

  const LoginRegInputField({
    Key key,
    this.hintText = '',
    this.keyboardInputType = TextInputType.text,
    @required this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: keyboardInputType,
      style: TextStyle(
        color: Colors.black,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 22.0,
      ),
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xFF8D8D8D)),
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
        ),
      ),
    );
  }
}