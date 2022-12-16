import 'package:flutter/material.dart';
import '../../auth/login.dart';
import '../../style/style.dart';
// import 'package:flutter/services.dart';

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
        // IconButton(
        //   icon: Icon(Icons.settings),
        //   onPressed: () {},
        //   tooltip: "Settings",
        // ),
        IconButton(
          icon: Icon(Icons.logout),
          // onPressed: () => SystemNavigator.pop(),
          onPressed: () => showAlertDialog(context),
          tooltip: "Logout",
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

//note that you have to made this outside the class
showAlertDialog(BuildContext context) {
  //set up button
  Widget cancelButton() {
    return TextButton(
      onPressed: () => Navigator.of(context, rootNavigator: true).pop("dialog"),
      child: Text(
        "Cancel",
        style: TextStyle(color: Colors.white),
      ),
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
    );
  }

  Widget confirmButton() {
    return TextButton(
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop("dialog");
        Navigator.of(context).pushReplacement(
            new MaterialPageRoute(builder: (context) => Login()));
      },
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
      child: Text(
        "Confirm",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  //set up alert dialog
  AlertDialog alertDialog = new AlertDialog(
    title: Text("Logout"),
    content: Text("Are you sure you want to logout?"),
    actions: [
      confirmButton(),
      cancelButton(),
    ],
  );

  //show dialog
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
  );
}
