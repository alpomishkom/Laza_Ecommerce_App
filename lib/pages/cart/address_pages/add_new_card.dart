import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/widget/textforimfilld.dart';

import '../../widget/elvationbottom_pages.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add New Card",
          style: GoogleFonts.inter(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: a == 1
                            ? const Color(0xFFFFEEE3)
                            : const Color(0xFFF5F6FA),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFFF5F00),
                        ),
                      ),
                      child:
                          const Image(image: AssetImage("assets/images/image 9.png")),
                    ),
                    onTap: () {
                      setState(() {
                        a = 1;
                      });
                    },
                  ),
                ),
                const Gap(18),
                Expanded(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: a == 2
                            ? const Color(0xFFFFEEE3)
                            : const Color(0xFFF5F6FA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Image(
                          image: AssetImage("assets/images/image 10.png")),
                    ),
                    onTap: () {
                      setState(() {
                        a = 2;
                      });
                    },
                  ),
                ),
                const Gap(18),
                Expanded(
                  child: InkWell(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: a == 3
                            ? const Color(0xFFFFEEE3)
                            : const Color(0xFFF5F6FA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                          const Image(image: AssetImage("assets/images/Vector.png")),
                    ),
                    onTap: () {
                      setState(() {
                        a = 3;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Gap(30),
            const MyTextfilldd(
              topText: "Card Owner",
              hintTexte: "Mrh Raju",
            ),
            const Gap(20),
            const MyTextfilldd(
              topText: "Card Number",
              hintTexte: "5254 7634 8734 7690",
            ),
            const Gap(20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  width: 160,
                  child: MyTextfilldd(
                    topText: "EXP",
                    hintTexte: "24/24",
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 160,
                  child: MyTextfilldd(
                    topText: "CVV",
                    hintTexte: "7763",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: ElvationbottomPages(onPressed: () {  }, text: 'Add Card',),
    );
  }
}
