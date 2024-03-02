import 'package:flutter/material.dart';

class SupermarketCatogry extends StatefulWidget {
  const SupermarketCatogry({super.key});

  @override
  State<SupermarketCatogry> createState() => _SupermarketCatogry();
}

class _SupermarketCatogry extends State<SupermarketCatogry> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("supermarket kategorisi kategorisi"),
          
          ],
        ),
      ),
    );
  }
}