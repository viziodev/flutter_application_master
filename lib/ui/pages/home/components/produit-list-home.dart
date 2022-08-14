import 'package:flutter/material.dart';
import 'package:flutter_application_master/models/produit-model.dart';
import 'package:flutter_application_master/ui/pages/home/components/produit-item-home.dart';

class ProductListHome extends StatefulWidget {
  const ProductListHome({super.key});

  @override
  State<ProductListHome> createState() => _ProductListHomeState();
}

class _ProductListHomeState extends State<ProductListHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProduitItemHome(
            model: ProduitModel(
                id: 1,
                name: "Burger & Boisson",
                prix: 2000,
                image: "burger_beer.svg"),
          );
        },
      ),
    );
  }
}
