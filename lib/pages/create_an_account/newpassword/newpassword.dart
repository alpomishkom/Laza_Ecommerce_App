import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/home/homePages.dart';
import '../../widget/bottom_navigator_bar/bottom_navigator_bar.dart';
import '../../widget/elvationbottom_pages.dart';
import '../widget/textformfild_pages.dart';

class NewPasswordPages extends StatefulWidget {
  const NewPasswordPages({super.key});

  @override
  State<NewPasswordPages> createState() => _SignUpPagesState();
}

class _SignUpPagesState extends State<NewPasswordPages> {
  bool isSwich = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: [
              Center(
                child: Text(
                  "New Password",
                  style: GoogleFonts.inter(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1D1E20),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 4,
          ),
          const TextFormFildPages(
            hintText: 'HJ@#9783kja',
            label: Text("Password"),
          ),
          Gap(20),
          const TextFormFildPages(
            hintText: 'HJ@#9783kja',
            label: Text("Confirm Password"),
          ),
          const Spacer(
            flex: 6,
          ),
          Text(
            "Please write your new password.",
            style: GoogleFonts.inter(
              color: Color(0xFF8F959E),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 26,
          ),
          ElvationbottomPages(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomNavigatorBarPages(),
                ),
              );
            },
            text: 'Reset Password',
          ),
        ],
      ),
    );
  }
}
