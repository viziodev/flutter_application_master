import 'package:flutter/material.dart';
import 'package:flutter_application_master/services/categories-service.dart';
import 'package:flutter_application_master/ui/components/label-widget.dart';

import 'package:flutter_application_master/ui/pages/home/components/categorie-item-home.dart';
import '../../../../models/categorie-model.dart';

class CategorieListHome extends StatefulWidget {
  const CategorieListHome({super.key});

  @override
  State<CategorieListHome> createState() => _CategorieListHomeState();
}

class _CategorieListHomeState extends State<CategorieListHome> {
  List<CategorieModel>? categories;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategories();
  }

  void getCategories() {
    CategorieService().getCategories().then((data) {
      setState(() {
        categories = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return categories == null
        ? Container(
            child: Center(
              child: LabelWidget(
                text: "Erreur de Chargement !....",
                color: Colors.red,
                size: 20,
              ),
            ),
          )
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 70,
            //color: Colors.amber,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories!.length,
              itemBuilder: (context, index) {
                categories![0].isActive = true;
                return CategorieItemHome(
                  model: categories![index],
                  press: () {},
                );
              },
            ));
  }
}
