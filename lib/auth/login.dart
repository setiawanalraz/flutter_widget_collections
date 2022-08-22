import 'package:appbar_gradasi_dengan_corak/view/page/flexible_page.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text("LOGIN"),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) {
                return FlexiblePage();
              }));
            },
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
