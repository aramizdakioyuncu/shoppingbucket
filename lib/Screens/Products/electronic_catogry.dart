import 'package:flutter/material.dart';

class ElectronicCatogry extends StatefulWidget {
  const ElectronicCatogry({super.key});

  @override
  State<ElectronicCatogry> createState() => _ElectronicCatogry();
}

class _ElectronicCatogry extends State<ElectronicCatogry> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("elektronik kategorisi"),
          
          ],
        ),
      ),
    );
  }
}