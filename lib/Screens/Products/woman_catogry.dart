import 'package:flutter/material.dart';

class WomanCatogry extends StatefulWidget {
  const WomanCatogry({super.key});

  @override
  State<WomanCatogry> createState() => _WomanCatogry();
}

class _WomanCatogry extends State<WomanCatogry> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("kadın katogorisi"),
          
          ],
        ),
      ),
    );
  }
}