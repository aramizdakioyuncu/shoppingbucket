import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shoppingbucket/Models/product.dart';
import 'package:shoppingbucket/Screens/Products/man_catogry.dart';
import 'package:shoppingbucket/Screens/Products/woman_catogry.dart';

class PruductsPage extends StatefulWidget {
  const PruductsPage({Key? key}) : super(key: key);

  @override
  State<PruductsPage> createState() => _PruductsPageState();
}

class _PruductsPageState extends State<PruductsPage> {
  List<Product> urunler = [];

  @override
  void initState() {
    super.initState();
    urundoldur();
  }

  void urundoldur() {
    urunler.add(
      Product("Bilgisayar", "Kişisel lkullanım için", 50000,
          "https://platincdn.com/2764/dosyalar/images/Haberler/nasil-bilgisayar-toplanir.jpg"),
    );
    urunler.add(
      Product("Cep Telefonu", "Kişisel lkullanım için", 2,
          "https://cdn03.ciceksepeti.com/cicek/kc6144989-1/XL/nokia-3310-3g-mavi-cep-telefonu-vitrin-kc6144989-1-4ac54102e60d4ee384f0c637483896b2.jpg"),
    );
    urunler.add(
      Product("mont", "Kişisel lkullanım için", 100,
          "https://static.ticimax.cloud/cdn-cgi/image/width=-,quality=85/5334/uploads/urunresimleri/buyuk/madmext-bej-sisme-mont-5064-c60-f2.jpg"),
    );
    urunler.add(
      Product("Fıstık", "Kişisel lkullanım için", 5,
          "https://static.ticimax.cloud/cdn-cgi/image/width=700,quality=85/54612/uploads/urunresimleri/buyuk/kabuklu-antep-fistik-karakoy-gulluoglu-9b79-e.jpg"),
    );
  }

  void urunlistebak() {
    for (var element in urunler) {
      element.productCard();
    }
  }

  void openManCatogry() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ManCatogry()));
  }

  void openWomanCatogry() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WomanCatogry()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: openManCatogry,
              child: const Text("erkek"),
            ),
            ElevatedButton(
              onPressed: openWomanCatogry,
              child: const Text("kadın"),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: urunler.length,
                itemBuilder: (context, index) {
                  return urunler[index].productCard();
                },
              ),
            ),
            const Text("Anasayfa"),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: urunler.length,
                itemBuilder: (context, index) {
                  return urunler[index].productCard();
                },
              ),
            ),
            const Text("Diğer İçerikler"),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: urunler.length,
                itemBuilder: (context, index) {
                  return urunler[index].productCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
