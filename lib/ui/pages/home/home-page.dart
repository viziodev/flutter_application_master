import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_master/ui/constants.dart';
import 'package:flutter_application_master/ui/pages/home/components/app-bar-home.dart';
import 'package:flutter_application_master/ui/pages/home/components/botton-nav-bar-home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Zone de Recherche
            Container(
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarHome(),
    );
  }
}
