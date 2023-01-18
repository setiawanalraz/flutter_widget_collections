import 'package:flutter/material.dart';
import '../../../auth/register.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

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
      ),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Register(),
            ),
          ),
          child: Center(
            child: Text(
              "Register Now",
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
