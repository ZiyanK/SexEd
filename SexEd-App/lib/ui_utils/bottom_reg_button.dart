import 'package:flutter/material.dart';
import 'package:sex_ed/ui_utils/constants.dart';

class BottomRegButton extends StatelessWidget {
  final buttonTitle;
  final onPressed;

  const BottomRegButton({
    Key key,
    @required this.buttonTitle,
    @required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: SizedBox(
          height: 75,
          width: 360,
          child: RaisedButton(
            elevation: 4.0,
            textColor: Colors.white,
            color: kButtonColor,
            child: Text(
              buttonTitle,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22.0,
              ),
            ),
            onPressed: onPressed,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)
            ),
          ),
        ),
      ),
    );

  }
}
