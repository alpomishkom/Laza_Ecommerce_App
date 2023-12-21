import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widget/elvationbottom_pages.dart';
import '../newpassword/newpassword.dart';

class VerificationCodePages extends StatefulWidget {
  const VerificationCodePages({Key? key}) : super(key: key);

  @override
  State<VerificationCodePages> createState() => _VerificationCodePagesState();
}

class _VerificationCodePagesState extends State<VerificationCodePages>
    with TickerProviderStateMixin {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Verification Code",
                  style: GoogleFonts.inter(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1D1E20),
                  ),
                ),
                Gap(58),
                SvgPicture.asset("assets/icons/cloud.svg"),
                // Assuming the path is correct
              ],
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PinCodeTextField(
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 98,
                fieldWidth: 78,
                activeFillColor: Colors.white,
              ),
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              animationDuration: Duration(milliseconds: 300),
              onChanged: (value) {
                setState(() {
                  currentText = value;
                });
              },
              appContext: context, // Use the current context
            ),
          ),
          Spacer(
            flex: 8,
          ),
          Text(
            "00:20 resend confirmation code.",
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
                  builder: (context) => NewPasswordPages(),
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
