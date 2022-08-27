import 'package:flutter/material.dart';
import '../page/flexible_page.dart';
import '../page/animated_container.dart';
import '../page/stack_page.dart';
import '../page/card_page.dart';
import '../page/user_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = "Alaraz Wari Setiawan";
    final email = "alrazsetiawan79@gmail.com";
    final urlImage =
        "http://www.bbk.ac.uk/mce/wp-content/uploads/2015/03/8327142885_9b447935ff.jpg";

    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 20),
        child: ListView(
          children: [
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: name,
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  // const SizedBox(height: 12),
                  // buildSearchField(),
                  // const SizedBox(height: 24),
                  buildMenuItem(
                    icon: Icons.auto_awesome_mosaic,
                    text: "Flexible Widget",
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                      icon: Icons.animation,
                      text: "Animated Container",
                      onClicked: () => selectedItem(context, 1)),
                  const SizedBox(height: 16),
                  buildMenuItem(
                      icon: Icons.view_agenda,
                      text: "Stack Widget",
                      onClicked: () => selectedItem(context, 2)),
                  const SizedBox(height: 16),
                  buildMenuItem(
                      icon: Icons.grid_view,
                      text: "Card Widget",
                      onClicked: () => selectedItem(context, 3)),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                      icon: Icons.info,
                      text: "About",
                      onClicked: () => selectedItem(context, 4)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FlexiblePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AnimatedPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => StackPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyCardItem(),
        ));
        break;
      case 4:
        showAboutDialog(
            context: context,
            applicationName: "Flutter Widget Collections",
            applicationVersion: "1.0.0",
            applicationIcon: MyAppIcon(),
            // applicationIcon: FlutterLogo(
            //   size: 64,
            // ),
            applicationLegalese:
                "This application contain a collection of cool widgets that are in the flutter framework.");
        break;
    }
  }

  buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    // overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    // overflow: TextOverflow.clip,
                  ),
                ],
              ),
              // Spacer(),
              // CircleAvatar(
              //   radius: 24,
              //   backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              //   child: Icon(Icons.add_comment_outlined, color: Colors.white),
              // )
            ],
          ),
        ),
      );
}

class MyAppIcon extends StatelessWidget {
  const MyAppIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/logo.png"),
      width: 64,
      height: 64,
    );
  }
}
