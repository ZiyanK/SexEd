import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sex_ed/ui_utils/bottom_reg_button.dart';
import 'package:sex_ed/ui_utils/constants.dart';
import 'package:sex_ed/ui_utils/login_reg_input_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 0.75*device_width, bottom: 20),
                        child: RawMaterialButton(
                          constraints: BoxConstraints.tightFor(
                            width: 56.0,
                            height: 56.0
                          ),
                          elevation: 6.0,
                          shape: CircleBorder(),
                          fillColor: Colors.white,
                          onPressed: () {Navigator.pop(context);},
                          child: Icon(Icons.clear, color: Color(0xFF8B8B8B),),
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Image.asset("images/sex_logo.png"),
                      ),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "Welcome back to ",
                              style: TextStyle(
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 24
                              )
                            ),
                            TextSpan(
                              text:  "Sex.in",
                              style: TextStyle(
                                color: kLogoColor,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 24
                              )
                            )
                          ]
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      LoginRegInputField(
                        hintText: "Email address",
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
                        height: 30,
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Forgot Password?",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xFF777777),
                              decoration: TextDecoration.underline,
                            )
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      BottomRegButton(
                        buttonTitle: "LOG IN",
                        onPressed: () {},
                      ),
                    ],
                  )
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
