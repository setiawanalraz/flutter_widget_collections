import 'package:flutter/material.dart';

class ResetPassForm extends StatelessWidget {
  const ResetPassForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
  }
}
