import 'dart:developer';

import 'package:flutter/material.dart';

//Screen Imports
import 'package:shoppingbucket/Screens/Products/products_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  void openpruductspage(){
     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PruductsPage()),
                );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: openpruductspage,
                child: 
                  Text("asd"),
                ),
          ],
        ),
      ),
    );
  }
}
