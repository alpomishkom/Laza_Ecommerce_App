import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widget/elvationbottom_pages.dart';
import '../forgot_passworld/forgot_passworld_pages.dart';
import '../widget/textformfild_pages.dart';

class WelcomePages extends StatefulWidget {
  const WelcomePages({super.key});

  @override
  State<WelcomePages> createState() => _SignUpPagesState();
}

class _SignUpPagesState extends State<WelcomePages> {
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
                child: Column(
                  children: [
                    Text(
                      "Welcome",
                      style: GoogleFonts.inter(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1D1E20),
                      ),
                    ),
                    Text(
                      "Please enter your data to continue",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 3,
          ),
          const TextFormFildPages(
            hintText: 'Esther Howard',
            label: Text("Username"),
          ),
          Gap(20),
          const TextFormFildPages(
            hintText: 'HJ@#9783kja',
            label: Text("Password"),
          ),
         Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgotPassworldPages()));
                },
                child: Text(
                  "Forgot password?",
                  style: GoogleFonts.inter(
                    color: Color(0xFFEA4335),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Gap(42),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Remember me"),
                CupertinoSwitch(
                  value: isSwich,
                  onChanged: (value) {
                    setState(() {
                      isSwich = value;
                    });
                  },
                )
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          ),
          ElvationbottomPages(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForgotPassworldPages()));
            },
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
