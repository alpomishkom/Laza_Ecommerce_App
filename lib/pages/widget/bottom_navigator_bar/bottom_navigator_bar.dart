import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_ecommerce/pages/home/homePages.dart';

import '../../home/wishlist/wishlist.dart';

class BottomNavigatorBarPages extends StatefulWidget {
  const BottomNavigatorBarPages({super.key});

  @override
  State<BottomNavigatorBarPages> createState() =>
      _BottomNavigatorBarPagesState();
}

class _BottomNavigatorBarPagesState extends State<BottomNavigatorBarPages> {
  int index = 0;
  final _list = [
    HomePages(),
    Wishlist(),
    HomePages(),
    HomePages(),
  ];

  void onTap(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0xFF9775FA),
        unselectedItemColor: Color(0xFF9775FA),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/icons/heard.svg"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/icons/bag.svg"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: SvgPicture.asset("assets/icons/card.svg"),
          ),
        ],
        onTap: onTap,
        currentIndex: index,
      ),
    );
  }
}
