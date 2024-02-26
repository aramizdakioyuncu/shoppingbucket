import 'package:flutter/material.dart';
import 'package:shoppingbucket/Screens/Account/accoutn_page.dart';
import 'package:shoppingbucket/Screens/Bucket/bucket.dart';
import 'package:shoppingbucket/Screens/Favorite/Favorite_page.dart';
import 'package:shoppingbucket/Screens/Products/man_catogry.dart';
import 'package:shoppingbucket/Screens/Products/products_page.dart';
import 'package:shoppingbucket/Screens/Trendyol_go/go_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int bottomNavbarCurrentIndex = 4;
  final PageController _pageController = PageController(initialPage: 0);

  void changepage(int page) {
    setState(() {
      bottomNavbarCurrentIndex = page;

      _pageController.jumpToPage(page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey[200],
          ),
          child: const TextField(
            style: TextStyle(
              color: Colors.black,
            ),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              hintText: "Marka, ürün veya kategori ara",
              hintStyle: TextStyle(fontSize: 13),
              prefixIcon: Icon(Icons.search, color: Colors.orange),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [
            PruductsPage(),
            GoPage(),
            FavPage(),
            bucketPage(),
            AccountPage(),
            ManCatogry(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavbarCurrentIndex,
        onTap: (value) {
          changepage(value);
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wordpress_outlined), label: 'Trendyol Go'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorilerim'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: 'Sepetim'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: 'Hesabım'),
        ],
        iconSize: 17.00,
      ),
    );
  }
}
