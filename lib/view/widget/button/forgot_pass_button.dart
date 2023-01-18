import 'package:flutter/material.dart';
import '../../../auth/forgot_password.dart';

class ForgotPassButton extends StatelessWidget {
  const ForgotPassButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ForgotPassword(),
            ),
          ),
          child: Text(
            "Forgot password?",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
