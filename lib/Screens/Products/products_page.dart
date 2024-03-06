import 'package:flutter/material.dart';
import 'package:shoppingbucket/Models/marka.dart';
import 'package:shoppingbucket/Models/product.dart';

class PruductsPage extends StatefulWidget {
  const PruductsPage({Key? key, required this.asd}) : super(key: key);
  final PageController asd;
  @override
  State<PruductsPage> createState() => _PruductsPageState();
}

class _PruductsPageState extends State<PruductsPage> {
  List<Product> urunler = [];
  List<Marka> markalar = [];

  @override
  void initState() {
    super.initState();
    urundoldur();
    markadoldur();
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

  void markadoldur() {
    markalar.add(
      Marka(
          "https://upload.wikimedia.org/wikipedia/commons/2/28/Logo_of_Mavi.png"),
    );
    markalar.add(
      Marka(
          "https://upload.wikimedia.org/wikipedia/commons/9/94/Old_Nike_logo.jpg"),
    );
    markalar.add(
      Marka(
          "https://upload.wikimedia.org/wikipedia/commons/2/28/Logo_of_Mavi.png"),
    );
    markalar.add(
      Marka(
          "https://upload.wikimedia.org/wikipedia/commons/2/28/Logo_of_Mavi.png"),
    );
    markalar.add(
      Marka(
          "https://upload.wikimedia.org/wikipedia/commons/2/28/Logo_of_Mavi.png"),
    );
  }

  void urunlistebak() {
    for (var element in urunler) {
      element.productCard();
    }
  }

  void openManCatogry() {
    widget.asd.jumpToPage(5);
  }

  void openWomanCatogry() {
    widget.asd.jumpToPage(6);
  }

  void openElectroCatogry() {
    widget.asd.jumpToPage(7);
  }

  void openSupermarketCatogry() {
    widget.asd.jumpToPage(8);
  }

  void openSportCatogry() {
    widget.asd.jumpToPage(9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: openManCatogry,
                    child: const Text("Erkek"),
                  ),
                  ElevatedButton(
                    onPressed: openWomanCatogry,
                    child: const Text("Kadın"),
                  ),
                  ElevatedButton(
                    onPressed: openElectroCatogry,
                    child: const Text("Elektronik"),
                  ),
                  ElevatedButton(
                    onPressed: openSupermarketCatogry,
                    child: const Text("super market"),
                  ),
                  ElevatedButton(
                    onPressed: openSportCatogry,
                    child: const Text("spor"),
                  ),
                ],
              ),
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
            ),  SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: urunler.length,
                itemBuilder: (context, index) {
                  return urunler[index].productCard();
                },
              ),
            ),  SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: urunler.length,
                itemBuilder: (context, index) {
                  return urunler[index].productCard();
                },
              ),
            ),  SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: urunler.length,
                itemBuilder: (context, index) {
                  return urunler[index].productCard();
                },
              ),
            ),
            SizedBox(
              height: 450,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: markalar.length,
                itemBuilder: (context, index) {
                  return markalar[index].markaCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
