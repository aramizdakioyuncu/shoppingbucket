import 'package:flutter/material.dart';

class ManCatogry extends StatefulWidget {
  const ManCatogry({super.key});

  @override
  State<ManCatogry> createState() => _ManCatogry();
}

class _ManCatogry extends State<ManCatogry> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("erkek katogorisi"),
          
          ],
        ),
      ),
    );
  }
}