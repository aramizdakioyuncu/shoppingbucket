import 'package:flutter/material.dart';

class Product {
  final String name;
  final String descreption;
  final double price;
  final String image;

  Product(this.name, this.descreption, this.price, this.image);

  double indirim(double indirimorani) {
    double yenifiyat = (price * (100 - indirimorani) / 100);
    return yenifiyat;
  }

  Widget productCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 133, 132, 132),
            borderRadius: BorderRadius.all(Radius.circular(11))),
        child: Column(
          children: [
            Image.network(image, height: 140, width: 150, fit: BoxFit.cover),
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                Text(
                  price.toString() + " TL",
                  style: const TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  indirim(20).toString() + " TL",
                  style: const TextStyle(color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void markaCard() {}
}
