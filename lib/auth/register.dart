import 'package:flutter/material.dart';
import '../auth/login.dart';
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
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Register",
                      style: title,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sign up your new account",
                      style: subTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
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
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Full name",
                                  hintText: "Enter Full name",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(Icons.account_box),
                                ),
                                keyboardType: TextInputType.name,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Email or Phone number",
                                  hintText: "Enter Email or Phone number",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(Icons.email),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  hintText: "Enter Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                keyboardType: TextInputType.visiblePassword,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  hintText: "Enter Confirmation Password",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                keyboardType: TextInputType.visiblePassword,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      //register button
                      Container(
                        height: 30,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 75),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff0096ff), Color(0xff6610f2)],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue[700],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login())),
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //end of register button

                      SizedBox(
                        height: 10,
                      ),

                      Text(
                        "or",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      //login button
                      Container(
                        height: 30,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 75),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff0096ff), Color(0xff6610f2)],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Material(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () => Navigator.pop(context),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //end of login button
                    ],
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}
