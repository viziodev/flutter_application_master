import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_master/ui/constants.dart';

class LabelWidget extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  const LabelWidget({this.color=Colors.black,this.size=15,required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
          text,
        style: TextStyle(
            color: color, fontSize: size, fontWeight: FontWeight.bold),
      ),
    );
  }
}
