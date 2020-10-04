import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sex_ed/screens/reg_screen2.dart';
import 'package:sex_ed/ui_utils/constants.dart';
import 'package:sex_ed/ui_utils/login_reg_input_field.dart';
import 'package:sex_ed/ui_utils/bottom_reg_button.dart';

class RegScreen1 extends StatefulWidget {
  static String id = "reg_screen1";
  @override
  _RegScreen1State createState() => _RegScreen1State();
}

class _RegScreen1State extends State<RegScreen1> {
  bool _checkedValue = false;
  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
    child: Container(
      height: device_height,
          width: device_width,
          decoration: kBackgroundDecor,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 60.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Hey! Welcome",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal
                        ),
                      ),
                    ),
                    Text(
                      "Please fill in the following details",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    LoginRegInputField(
                      hintText: "Your Name",
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginRegInputField(
                      hintText: "Username",
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginRegInputField(
                      hintText: "Date of Birth",
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginRegInputField(
                      hintText: "Gender",
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CheckboxListTile(
                      activeColor: kAuthPurpleColor,

                      title: Text(
                        "by signing up you agree to <AppName>’s Terms of Service and Privacy Policy. ",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.0,
                          color: kAuthPurpleColor,
                        ),
                      ),
                      value: _checkedValue,
                      onChanged: (value) {
                        setState(() {
                          _checkedValue = value;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                    BottomRegButton(
                      buttonTitle: "CONTINUE",
                      onPressed: () {Navigator.pushNamed(context, RegScreen2.id);},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: "Cancel",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0,
                            color: kAuthPurpleColor,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = ()=>Navigator.pop(context),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
