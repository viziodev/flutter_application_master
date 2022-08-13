import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

AppBar appBarHome() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {},
    ),
    title: RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "Flutter",
            style: TextStyle(
              color: BbwConstantes.bbwPrimaryColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "Master",
            style: TextStyle(
              color: BbwConstantes.bbwSecondaryColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            color: BbwConstantes.bbwPrimaryColor,
          ))
    ],
  );
}
