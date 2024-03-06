import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Marka {
  final String image;

  Marka(this.image);
  Widget markaCard() {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          image,
          width: 150,
          height: 140,
          fit: BoxFit.cover,
        ));
  }
}
