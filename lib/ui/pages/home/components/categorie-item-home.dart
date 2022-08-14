import 'package:flutter/material.dart';
import 'package:flutter_application_master/ui/constants.dart';

import '../../../../models/categorie-model.dart';

class CategorieItemHome extends StatelessWidget {
  final CategorieModel model;
  final Function press;
  const CategorieItemHome({required this.press,required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.press(),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Text(
                model.name,
                style: model.isActive
                    ? TextStyle(
                        fontWeight: FontWeight.bold,
                        color: BbwConstantes.bbwTextColor)
                    : TextStyle(
                        color: BbwConstantes.bbwTextLightColor, fontSize: 12),
              ),
              if (model.isActive)
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 3,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                )
            ],
          )),
    );
  }
}
