import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widget/bottom_widget.dart';
import '../widget/custom_appbar.dart';
import '../widget/navigation_drawer.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: CustomAppBar(),
      body: Builder(
        builder: (context) => Stack(children: [
          Image(
              image: AssetImage("assets/pattern.png"),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: BottomWidget(
                  icon: Icons.open_in_new,
                  text: "Open Drawer",
                  onClicked: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              )),
        ]),
      ),
    );
  }
}
