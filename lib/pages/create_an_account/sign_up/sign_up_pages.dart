import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/create_an_account/welcome/welcome_pages.dart';
import 'package:laza_ecommerce/pages/splash/splash_pages.dart';

import '../../widget/elvationbottom_pages.dart';
import '../widget/textformfild_pages.dart';

class SignUpPages extends StatefulWidget {
  const SignUpPages({super.key});

  @override
  State<SignUpPages> createState() => _SignUpPagesState();
}

class _SignUpPagesState extends State<SignUpPages> {
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
                  "Sign Up",
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
            flex: 3,
          ),
          const TextFormFildPages(
            hintText: 'Esther Howard',
            label: Text("Username"),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFormFildPages(
            hintText: 'HJ@#9783kja',
            label: Text("Password"),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFormFildPages(
            hintText: 'bill.sanders@example.com',
            label: Text("bill.sanders@example.com"),
          ),
          SizedBox(
            height: 42,
          ),
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
                  MaterialPageRoute(builder: (context) => WelcomePages()));
            },
            text: 'Sign Up',
          ),
        ],
      ),
    );
  }
}
