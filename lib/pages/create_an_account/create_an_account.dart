
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/create_an_account/sign_up/sign_up_pages.dart';
import 'package:laza_ecommerce/pages/create_an_account/welcome/welcome_pages.dart';

import '../widget/elvationbottom_pages.dart';

class CreateanAccount extends StatefulWidget {
  const CreateanAccount({super.key});

  @override
  State<CreateanAccount> createState() => _CreateanAccountState();
}

class _CreateanAccountState extends State<CreateanAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let’s Get Started",
                style: GoogleFonts.inter(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF1D1E20),
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xFF4267B2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                          image: AssetImage("assets/images/Facebook.png")),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Facebook",
                        style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: CupertinoColors.white),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.maxFinite,
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xFF1DA1F2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                          image: AssetImage("assets/images/Twitter.png")),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Twitter",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: CupertinoColors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.maxFinite,
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEA4335),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage("assets/images/Google.png"),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Google",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: CupertinoColors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.inter(
                    color: const Color(0xFF8F959E),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomePages()));
                },
                child: Text(
                  "Signin",
                  style: GoogleFonts.inter(
                    color: const Color(0xFF1D1E20),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          ElvationbottomPages(
            text: 'Create an Account',
            // ignore: void_checks
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  const SignUpPages(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
