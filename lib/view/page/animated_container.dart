import 'package:flutter/material.dart';
import '../widget/custom_appbar.dart';
import '../widget/navigation_drawer.dart';
import 'dart:math';

class AnimatedPage extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  Random random = new Random();
  final padding = EdgeInsets.symmetric(vertical: 20);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: CustomAppBar(),
        body: Container(
          padding: padding,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          color: Color.fromARGB(255, random.nextInt(256),
                              random.nextInt(256), random.nextInt(256)),
                          duration: Duration(seconds: 1),
                          width: 50.0 + random.nextInt(101),
                          height: 50.0 + random.nextInt(101),
                          curve: Curves.elasticIn,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          color: Color.fromARGB(255, random.nextInt(256),
                              random.nextInt(256), random.nextInt(256)),
                          duration: Duration(seconds: 1),
                          width: 50.0 + random.nextInt(101),
                          height: 50.0 + random.nextInt(101),
                          curve: Curves.elasticIn,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          color: Color.fromARGB(255, random.nextInt(256),
                              random.nextInt(256), random.nextInt(256)),
                          duration: Duration(seconds: 1),
                          width: 50.0 + random.nextInt(101),
                          height: 50.0 + random.nextInt(101),
                          curve: Curves.elasticIn,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: AnimatedContainer(
                          color: Color.fromARGB(255, random.nextInt(256),
                              random.nextInt(256), random.nextInt(256)),
                          duration: Duration(seconds: 1),
                          width: 50.0 + random.nextInt(101),
                          height: 50.0 + random.nextInt(101),
                          curve: Curves.elasticIn,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
