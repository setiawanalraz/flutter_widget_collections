import 'package:flutter/material.dart';
import '../../style/style.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;

  const UserPage({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: customBoxDecoration,
        ),
      ),
      body: Image.network(
        urlImage,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, progress) {
          return progress == null ? child : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
