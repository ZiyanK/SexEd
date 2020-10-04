import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sex_ed/screens/reg_screen3.dart';
import 'package:sex_ed/ui_utils/bottom_reg_button.dart';
import 'package:sex_ed/ui_utils/constants.dart';
import 'package:sex_ed/ui_utils/role_reg_input_field.dart';

enum UserRole {student, teacher, parent}

class RegScreen2 extends StatefulWidget {
  static String id = "reg_screen2";
  @override
  _RegScreen2State createState() => _RegScreen2State();
}

class _RegScreen2State extends State<RegScreen2> {
  UserRole _userRole = UserRole.student;
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
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 60.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "So, What are you doing right now?",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal
                        ),
                      ),
                    ),
                    Text(
                      "I am currently a ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: RadioListTile(
                        title: Text(
                          "Student",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        activeColor: Colors.black,
                        value: UserRole.student,
                        groupValue: _userRole,
                        onChanged: (UserRole value) {
                          setState(() {
                            _userRole = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: RadioListTile(
                        title: Text(
                          "Teacher",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        activeColor: Colors.black,
                        value: UserRole.teacher,
                        groupValue: _userRole,
                        onChanged: (UserRole value) {
                          setState(() {
                            _userRole = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: RadioListTile(
                        title: Text(
                          "Parent",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        activeColor: Colors.black,
                        value: UserRole.parent,
                        groupValue: _userRole,
                        onChanged: (UserRole value) {
                          setState(() {
                            _userRole = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 180,
                    ),
                    BottomRegButton(
                      buttonTitle: "CONTINUE",
                      onPressed: () {Navigator.pushNamed(context, RegScreen3.id);},
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
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
