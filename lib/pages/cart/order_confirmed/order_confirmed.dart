import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/elvationbottom_pages.dart';

class OrderConfirmed extends StatelessWidget {
  const OrderConfirmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Image(
                  image: AssetImage(
                    "assets/images/Mask Group.png",
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.55,0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: SvgPicture.asset("assets/icons/bark.svg"),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.45),
                child: Padding(
                  padding: const EdgeInsets.only(top: 52),
                  child: SvgPicture.asset("assets/icons/iphone.svg"),
                ),
              ),
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(top: 340),
                  child: Column(
                    children: [
                      Text(
                        "Order Confirmed!",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Color(0xFF1D1E20)),
                      ),
                      Text(
                        "Your order has been confirmed, we will send you confirmation email shortly.",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF8F959E),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: Size(double.maxFinite, 60),
              ),
              onPressed: () {
              },
              child: Text("Go to Orders",style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8F959E)
              ),),
            ),
          )
        ],
      ),
      bottomNavigationBar: ElvationbottomPages(onPressed: () {  }, text: 'Continue Shopping',),
    );
  }
}
