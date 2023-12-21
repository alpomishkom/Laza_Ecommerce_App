import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _NikePagesState();
}

class _NikePagesState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Wishlist",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: const Color(0xFF1D1E20),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: const Color(0xFFF5F6FA),
              radius: 20,
              child: SvgPicture.asset("assets/icons/bag.svg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "365 Items",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: const Color(0xFF1D1E20),
                        ),
                      ),
                      Text(
                        "Available in stock",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: const Color(0xFF8F959E),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(0xFFF5F6FA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/pen1.svg"),
                        const Gap(5),
                        Text(
                          "Edit",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: const Color(0xFF8F959E),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Gap(20),
              ColouminPagesMadel(),
              ColouminPagesMadel(),
              ColouminPagesMadel(),
              ColouminPagesMadel(),
            ],
          ),
        ),
      ),
    );
  }
}

class ColouminPagesMadel extends StatelessWidget {
  const ColouminPagesMadel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage(
                    "assets/images/Rectangle 568 (3).png",
                  ),
                ),
                Text(
                  "Nike Sportswear Club \n Fleece",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xFF1D1E20),
                  ),
                ),
                Text(
                  r"$99",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color(0xFF1D1E20),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  image: AssetImage("assets/images/Rectangle 568 (3).png"),
                ),
                Text(
                  "Nike Sportswear Club \n Fleece",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color(0xFF1D1E20),
                  ),
                ),
                Text(
                  r"$99",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: const Color(0xFF1D1E20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
