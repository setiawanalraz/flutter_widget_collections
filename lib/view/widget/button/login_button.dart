import 'package:flutter/material.dart';
import '../../page/flexible_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 75),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff0096ff),
            Color(0xff6610f2),
          ],
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
        ),
        borderRadius: BorderRadius.circular(50),
        color: Colors.blue[700],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => FlexiblePage(),
            ),
          ),
          child: Center(
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
