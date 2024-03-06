import 'package:flutter/material.dart';

class MusicCatogry extends StatefulWidget {
  const MusicCatogry({super.key});

  @override
  State<MusicCatogry> createState() => _MusicCatogry();
}

class _MusicCatogry extends State<MusicCatogry> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("müzik ve müzik aletleri katogorisi"),
          
          ],
        ),
      ),
    );
  }
}