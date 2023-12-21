import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/elvationbottom_pages.dart';
import '../verification_code/verification_code.dart';
import '../widget/textformfild_pages.dart';

class ForgotPassworldPages extends StatefulWidget {
  const ForgotPassworldPages({super.key});

  @override
  State<ForgotPassworldPages> createState() => _ForgotPassworldPagesState();
}

class _ForgotPassworldPagesState extends State<ForgotPassworldPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Forgot Password",
                  style: GoogleFonts.inter(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1D1E20),
                  ),
                ),
                Gap(58),
                SvgPicture.asset("assets/icons/cloud.svg"),
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
          TextFormFildPages(
            hintText: 'bill.sanders@example.com',
            label: Text("Email Address"),
          ),
          Spacer(
            flex: 8,
          ),
          Text(
            "Please write your email to receive a \n confirmation code to set a new password.",
            style: GoogleFonts.inter(
              color: Color(0xFF8F959E),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          ElvationbottomPages(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VerificationCodePages(),
                ),
              );
            },
            text: 'Confirm Mail',
          )
        ],
      ),
    );
  }
}
