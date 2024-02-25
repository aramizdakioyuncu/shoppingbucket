import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shoppingbucket/Models/product.dart';

class PruductsPage extends StatefulWidget {
  const PruductsPage({super.key});

  @override
  State<PruductsPage> createState() => _PruductsPage();
}

class _PruductsPage extends State<PruductsPage> {
  List<Product> urunler = [];

  @override
  void initState() {
    super.initState();
    urundoldur();
  }

  void urundoldur() {
    urunler.add(
      Product("Bilgisayar", "Kişisel lkullanım için", 50000,
          "https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/12157/uploads/urunresimleri/buyuk/bagcikli-erkek-spor-ayakkabi-yesil-bey--96cf1.jpg"),
    );
    urunler.add(
      Product("Cep Telefonu", "Kişisel lkullanım için", 2,
          "https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/12157/uploads/urunresimleri/buyuk/bagcikli-erkek-spor-ayakkabi-yesil-bey--96cf1.jpg"),
    );
    urunler.add(
      Product("Kasa", "Kişisel lkullanım için", 100,
          "https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/12157/uploads/urunresimleri/buyuk/bagcikli-erkek-spor-ayakkabi-yesil-bey--96cf1.jpg"),
    );
    urunler.add(
      Product("Fıstık", "Kişisel lkullanım için", 5,
          "https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/12157/uploads/urunresimleri/buyuk/bagcikli-erkek-spor-ayakkabi-yesil-bey--96cf1.jpg"),
    );
  }

  void urunlistebak() {
    log("Ürün Sayısı ${urunler.length}");

    for (var element in urunler) {
      element.productCard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Anasayfa"),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Yatay yönde kaydırma
                itemCount: urunler.length, // Görüntülenecek öğe sayısı
                itemBuilder: (context, index) {
                  return urunler[index].productCard();
                },
              ),
            ),
            Text("diğer içerikler"),
            SizedBox(
              height: 600,
            )
          ],
        ),
      ),
    );
  }
}
