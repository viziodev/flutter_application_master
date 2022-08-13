import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBarHome extends StatelessWidget {
  const BottomNavBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75.5,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 33,
              offset: Offset(0, -7),
              color: Color(0xFF6DAED9).withOpacity(0.11),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/home.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/Following.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/Glyph.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/person.svg"),
              onPressed: () {},
            ),
          ],
        ),
      );
  }
}