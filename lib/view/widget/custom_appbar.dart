import 'package:appbar_gradasi_dengan_corak/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56);

  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.list,
        color: Colors.white,
      ),
      title: Text(
        "Collections Widget",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
          tooltip: "Settings",
        ),
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () => SystemNavigator.pop(),
          tooltip: "Close App",
        ),
      ],
      flexibleSpace: Container(
        decoration: customBoxDecoration,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       colors: [Color(0xff0096ff), Color(0xff6610f2)],
        //       begin: FractionalOffset.topLeft,
        //       end: FractionalOffset.bottomRight),
        //   // image: DecorationImage(
        //   //     image: AssetImage("assets/pattern.png"),
        //   //     fit: BoxFit.cover,
        //   //     repeat: ImageRepeat.repeat),
        // ),
      ),
    );
  }
}
