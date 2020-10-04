import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RoleRegInputField extends StatelessWidget {

  final radioTitle;
  final value;
  final groupValue;
  final onChanged;

  const RoleRegInputField({
    Key key,
    @required this.radioTitle,
    @required this.value,
    @required this.groupValue,
    @required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0)
      ),
      child: RadioListTile(
        title: Text(
          radioTitle,
          style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 16.0,
              fontWeight: FontWeight.w400
          ),
        ),
        activeColor: Colors.black,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged
      ),
    );
  }
}