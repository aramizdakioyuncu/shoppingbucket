import 'package:flutter/material.dart';
import 'package:shoppingbucket/Screens/Account/accoutn_page.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPage();
}

class _FavPage extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("favorilerim"),
            
          ],
        ),
      ),
    );
  }
}