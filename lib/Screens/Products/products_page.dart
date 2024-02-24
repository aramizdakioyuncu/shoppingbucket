import 'package:flutter/material.dart';
import 'package:shoppingbucket/Screens/Account/accoutn_page.dart';

class PruductsPage extends StatefulWidget {
  const PruductsPage({super.key});

  @override
  State<PruductsPage> createState() => _PruductsPage();
}

class _PruductsPage extends State<PruductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Products sayfasına hoşgeldin"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountPage()),
                  );
                },
                child: const Icon(Icons.account_box))
          ],
        ),
      ),
    );
  }
}
