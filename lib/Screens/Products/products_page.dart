import 'package:flutter/material.dart';

class PruductsPage extends StatefulWidget {
  const PruductsPage({super.key});

  @override
  State<PruductsPage> createState() => _PruductsPage();
}

class _PruductsPage extends State<PruductsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Products sayfasına hoşgeldin"),
            
          ],
        ),
      ),
    );
  }
}
