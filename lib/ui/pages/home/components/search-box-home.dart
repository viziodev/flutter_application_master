import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class SearchBoxHome extends StatelessWidget {
  const SearchBoxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: BbwConstantes.bbwSecondaryColor.withOpacity(0.32)),
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: SvgPicture.asset("assets/icons/search.svg"),
                    hintText: "Recherche",
                    hintStyle: TextStyle(
                      color: BbwConstantes.bbwSecondaryColor,
                    )),
              ),
            );
  }
}