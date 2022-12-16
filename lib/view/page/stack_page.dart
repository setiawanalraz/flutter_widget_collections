import 'package:flutter/material.dart';
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
        builder: (context) => Stack(
          children: [
            Image(
                image: AssetImage("assets/pattern.png"),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
                      loadingBuilder: (context, child, progress) {
                        return progress == null
                            ? child
                            : Center(child: CircularProgressIndicator());
                      },
                    ),
                    SizedBox(height: 25),
                    BottomWidget(
                      icon: Icons.open_in_new,
                      text: "Open Drawer",
                      onClicked: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
