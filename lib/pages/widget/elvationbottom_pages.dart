import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ElvationbottomPages extends StatefulWidget {
  final String text;
  final  Function() onPressed;
  const ElvationbottomPages({
    super.key, required this.onPressed, required this.text,
  });

  @override
  State<ElvationbottomPages> createState() => _ElvationbottomPagesState();
}

class _ElvationbottomPagesState extends State<ElvationbottomPages> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF9775FA),
        fixedSize: Size(double.maxFinite, 90),
        foregroundColor: CupertinoColors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0)),
      ),
      onPressed: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 28),
        child: Text(
          widget.text,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: CupertinoColors.white,
          ),
        ),
      ),
    );
  }
}
