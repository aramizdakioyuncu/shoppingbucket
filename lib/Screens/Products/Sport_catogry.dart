import 'package:flutter/material.dart';

class SportCatogry extends StatefulWidget {
  const SportCatogry({super.key});

  @override
  State<SportCatogry> createState() => _SportCatogry();
}

class _SportCatogry extends State<SportCatogry> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("spor mazemeleri kategorisi"),
          
          ],
        ),
      ),
    );
  }
}