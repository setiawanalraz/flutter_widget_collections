import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Full name",
              hintText: "Enter Full name",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
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
                borderRadius: BorderRadius.circular(10),
              ),
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
                borderRadius: BorderRadius.circular(10),
              ),
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
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.lock),
            ),
            keyboardType: TextInputType.visiblePassword,
          ),
        ),
      ],
    );
  }
}
