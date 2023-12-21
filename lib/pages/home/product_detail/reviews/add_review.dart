import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/cart/cart.dart';

import '../../../widget/elvationbottom_pages.dart';

class AddReviewPages extends StatefulWidget {
  const AddReviewPages({Key? key}) : super(key: key);

  @override
  _AddReviewPagesState createState() => _AddReviewPagesState();
}

class _AddReviewPagesState extends State<AddReviewPages> {
  double fontValue = 8.0; // Initial value for the slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        title: Text(
          "Add Review",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: const Color(0xFF1D1E20),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                  ),
                ),
                const Gap(10),
                TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      label: Text("Type your name"),
                      hintText: "username",
                      fillColor: Color(0xFFF5F6FA),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
                const Gap(20),
                Text(
                  "How was your experience ?",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                  ),
                ),
                const Gap(10),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF5F6FA),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "Describe your experience?",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8F959E),
                        ),
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 25,
                      minHeight: 218,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Star",
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Slider(
                  min: 4.0,
                  max: 34.0,
                  activeColor: Colors.blue,
                  thumbColor: Colors.blueAccent,
                  value: fontValue,
                  onChanged: (value) {
                    setState(() {
                      fontValue = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Spacer(),
          ElvationbottomPages(
            onPressed: () {},
            text: 'Submit Review',
          )
        ],
      ),
    );
  }
}
