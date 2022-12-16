import 'package:flutter/material.dart';
import '../widget/custom_appbar.dart';
import '../widget/navigation_drawer.dart';
import '../../data/data_store.dart';
import '../../style/style.dart';
import 'package:url_launcher/url_launcher.dart';

class MyCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: CustomAppBar(),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: storeItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 5,
            child: Material(
              child: InkWell(
                onTap: () async {
                  final message = SnackBar(
                    content:
                        Text("You were opened " + storeItems[index].itemName),
                    action: SnackBarAction(
                      label: "dismiss",
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(message);

                  //open URL
                  await openUrl(storeItems[index].itemUrl,
                      forceWebView: true, enableJavaScript: true);
                },
                child: Stack(
                  alignment: FractionalOffset.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(storeItems[index].itemImage),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: customBoxDecoration,
                      child: Text(
                        storeItems[index].itemName,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Future<void> openUrl(String url,
    {bool forceWebView = false, enableJavaScript = false}) async {
  await launch(url,
      forceWebView: forceWebView, enableJavaScript: enableJavaScript);
}
