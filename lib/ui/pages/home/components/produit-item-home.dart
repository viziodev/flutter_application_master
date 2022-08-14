import 'package:flutter/material.dart';
import 'package:flutter_application_master/models/produit-model.dart';
import 'package:flutter_application_master/ui/constants.dart';
import 'package:flutter_application_master/ui/pages/detail/detail-page.dart';
import 'package:flutter_svg/svg.dart';

class ProduitItemHome extends StatelessWidget {
  final ProduitModel model;
  const ProduitItemHome({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //print(size.height / 200);
    return Container(
      margin: EdgeInsets.all(5),
      height: size.height / 3.4,
      width: size.width * 0.43,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 15,
                color: BbwConstantes.bbwTextLightColor.withOpacity(0.2))
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            /* Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DetailPage()),
            );*/
            Navigator.pushNamed(context, DetailPage.routeName);
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Container(
                height: 120,
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: BbwConstantes.bbwPrimaryColor.withOpacity(0.3),
                  // borderRadius: BorderRadius.circular(50),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                    "${BbwConstantes.pathImage}/${model.image}"),
              ),
              Text(model.name),
              SizedBox(
                height: 10,
              ),
              Text(
                "${model.prix} CFA",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.amber,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
