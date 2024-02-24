import 'package:flutter/material.dart';
import 'package:shoppingbucket/Screens/Account/accoutn_page.dart';

class bucketPage extends StatefulWidget {
  const bucketPage({super.key});

  @override
  State<bucketPage> createState() => _bucketPage();
}

class _bucketPage extends State<bucketPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("sepetim"),
          
          ],
        ),
      ),
    );
  }
}
