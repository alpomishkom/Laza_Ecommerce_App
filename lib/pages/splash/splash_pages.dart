import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../choose_gender/choose_gender_pages.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  
  @override
  void initState() {
   Future.delayed(Duration(seconds: 1),() {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChooseGenderPages()));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9775FA),
      body: Center(child: SvgPicture.asset("assets/icons/laza.svg")),
    );
  }
}
