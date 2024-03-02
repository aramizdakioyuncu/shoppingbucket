import 'package:flutter/material.dart';

class NotificatinonsPage extends StatefulWidget {
  const NotificatinonsPage({Key? key}) : super(key: key);

  @override
  State<NotificatinonsPage> createState() => _NotificatinonsPageState();
}

class _NotificatinonsPageState extends State<NotificatinonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Bildirimler'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bildirimler Sayfası"),
          ],
        ),
      ),
    );
  }
}
