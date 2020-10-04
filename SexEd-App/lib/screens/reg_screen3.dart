import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sex_ed/ui_utils/constants.dart';
import 'package:sex_ed/ui_utils/login_reg_input_field.dart';
import 'package:sex_ed/ui_utils/bottom_reg_button.dart';

class RegScreen3 extends StatefulWidget {
  static String id = "reg_screen3";
  @override
  _RegScreen3State createState() => _RegScreen3State();
}

class _RegScreen3State extends State<RegScreen3> {
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
                        "Let’s get this done!",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal
                        ),
                      ),
                    ),
                    Text(
                      "Fill in the following details",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                    SizedBox(
                      height: 75.0,
                    ),
                    LoginRegInputField(
                      hintText: "Email Address",
                      onChanged: (value) {},
                      keyboardInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginRegInputField(
                      hintText: "Password",
                      onChanged: (value) {},
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    LoginRegInputField(
                      hintText: "Confirm Password",
                      onChanged: (value) {},
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 175.0,
                    ),
                    BottomRegButton(
                      buttonTitle: "CONTINUE",
                      onPressed: () {},
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
                        ),
                      )
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

