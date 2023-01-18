import 'package:flutter/material.dart';
import '../view/widget/button/login_button.dart';
import '../view/widget/button/register_button.dart';
import '../view/widget/form/register_form.dart';
import '../style/style.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //added to prevent bottom overflow by pixel
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: loginBoxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Register",
                    style: title,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Sign up your new account",
                    style: subTitle,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(height: 40),
                      Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(27, 133, 225, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: RegisterForm(),
                      ),
                      SizedBox(height: 30),
                      RegisterButton(),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right: 20),
                              child: Divider(),
                            ),
                          ),
                          Text(
                            "or",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 20, right: 10),
                              child: Divider(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      //loginbutton
                      LoginButton(),
                      //eo loginbutton
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
