import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/widget/textforimfilld.dart';

import '../../widget/elvationbottom_pages.dart';
import 'add_new_card.dart';

class PaymentPages extends StatefulWidget {
  const PaymentPages({super.key});

  @override
  State<PaymentPages> createState() => _PaymentPagesState();
}

class _PaymentPagesState extends State<PaymentPages> {
  bool isSwich = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 260,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [const Card(), const Card()],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF6F2FF),
                fixedSize: const Size(double.maxFinite, 60),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    color: Color(0xFF9775FA),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNewCard(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/cardadd.svg"),
                  const Gap(6),
                  const Text("Add new card"),
                ],
              ),
            ),
            const Gap(20),
            const MyTextfilldd(
              topText: "Card Owner",
              hintTexte: "Mrh Raju",
            ),
            const Gap(20),
            const MyTextfilldd(
              topText: "Card Number",
              hintTexte: "5254 7634 8734 7690",
            ),
            Gap(16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 94,
                  width: 160,
                  child: MyTextfilldd(
                    topText: "EXP",
                    hintTexte: "24/24",
                  ),
                ),
                SizedBox(
                  height: 94,
                  width: 160,
                  child: MyTextfilldd(
                    topText: "CVV",
                    hintTexte: "7763",
                  ),
                ),
              ],
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Save card info",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CupertinoSwitch(
                  value: isSwich,
                  onChanged: (value) {
                    setState(() {
                      isSwich = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElvationbottomPages(
        onPressed: () {},
        text: 'Save Card',
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 260,
      width: 340,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Card 1.png"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 28),
            child: Text(
              "Mrh Raju",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color(0xFFFEFEFE)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 46),
            child: Text(
              "Visa Classic",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color(0xFFFEFEFE)),
            ),
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "5254 **** **** 7690",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w300,
                fontSize: 20,
                color: const Color(0xFFFEFEFE),
              ),
            ),
          ),
          const Gap(16),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              r"$3,763.87",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: const Color(0xFFFEFEFE),
              ),
            ),
          )
        ],
      ),
    );
  }
}
