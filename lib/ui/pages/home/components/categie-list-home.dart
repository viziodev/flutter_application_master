import 'package:flutter/material.dart';

import 'package:flutter_application_master/ui/pages/home/components/categorie-item-home.dart';
import '../../../../models/categorie-model.dart';

class CategorieListHome extends StatefulWidget {
  const CategorieListHome({super.key});

  @override
  State<CategorieListHome> createState() => _CategorieListHomeState();
}

class _CategorieListHomeState extends State<CategorieListHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 70,
        //color: Colors.amber,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return CategorieItemHome(
              model: CategorieModel(
                  name: "Menu${index}", id: 1, isActive: index == 0),
              press: () {},
            );
          },
        ));
  }
}
