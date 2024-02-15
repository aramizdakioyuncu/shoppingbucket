import 'package:flutter/material.dart';

class PruductsPage extends StatefulWidget {
  const PruductsPage({super.key});


  @override
  State<PruductsPage> createState() => _PruductsPage();
}

class _PruductsPage extends State<PruductsPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const TextField(style: TextStyle(color: Colors.white),),
        actions: const [Text("!    ")],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Products sayfasına hoşgeldin")
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.wordpress_outlined), label: 'Trendyol Go'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favorilerim'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_outlined), label: 'Sepetim'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: 'Hesabım'),
        ],
        iconSize: 17.00,
      
        ),
    );
  }
}
