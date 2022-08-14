import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static final routeName = "/detail";
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Page Detail"),
        ),
      ),
    );
  }
}
