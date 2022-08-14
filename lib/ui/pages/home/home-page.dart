import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_master/ui/components/label-widget.dart';
import 'package:flutter_application_master/ui/constants.dart';
import 'package:flutter_application_master/ui/pages/home/components/app-bar-home.dart';
import 'package:flutter_application_master/ui/pages/home/components/botton-nav-bar-home.dart';
import 'package:flutter_application_master/ui/pages/home/components/categie-list-home.dart';
import 'package:flutter_application_master/ui/pages/home/components/search-box-home.dart';
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
            SearchBoxHome(),
            CategorieListHome(),
            LabelWidget(
              text: "Nos Burgers",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarHome(),
    );
  }
}
