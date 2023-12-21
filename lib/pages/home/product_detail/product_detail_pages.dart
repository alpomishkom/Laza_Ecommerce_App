import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/home/homePages.dart';
import 'package:laza_ecommerce/pages/home/product_detail/reviews/reviews.dart';
import 'package:laza_ecommerce/pages/home/product_detail/widget/listtile.dart';
import 'package:laza_ecommerce/pages/widget/bottom_navigator_bar/bottom_navigator_bar.dart';

import '../../cart/cart.dart';
import '../../widget/elvationbottom_pages.dart';

class ProductDetailPages extends StatefulWidget {
  const ProductDetailPages({super.key});

  @override
  State<ProductDetailPages> createState() => _ProductDetailPagesState();
}

class _ProductDetailPagesState extends State<ProductDetailPages> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: double.maxFinite,
                  color: const Color(0xFFF2F2F2),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child:
                        Image(image: AssetImage("assets/images/image 5.png")),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.45,
                  left: MediaQuery.of(context).size.width * 0.41,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/dumolo.svg",
                      ),
                      Positioned(
                        left: 18,
                        top: 16,
                        child: SvgPicture.asset("assets/icons/nike1.svg"),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 46, left: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 26,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavigatorBarPages(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.arrow_back_rounded)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 46, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 26,
                      // ignore: deprecated_member_use
                      child: SvgPicture.asset(
                        "assets/icons/bag.svg",
                        // ignore: deprecated_member_use
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Men's Printed Pullover Hoodie",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xFF8F959E),
                        ),
                      ),
                      Text(
                        "Price",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color(0xFF8F959E),
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nike Club Fleece",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: const Color(0xFF1D1E20),
                        ),
                      ),
                      Text(
                        r"$120",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: const Color(0xFF1D1E20),
                        ),
                      ),
                    ],
                  ),
                  const Gap(22),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                          image: AssetImage("assets/images/Rectangle 575.png")),
                      Image(
                          image: AssetImage("assets/images/Rectangle 576.png")),
                      Image(
                          image: AssetImage("assets/images/Rectangle 577.png")),
                      Image(
                          image: AssetImage("assets/images/Rectangle 578.png")),
                    ],
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Size",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: const Color(0xFF1D1E20)),
                      ),
                      Text(
                        "Size Guide",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: const Color(0xFF8F959E)),
                      ),
                    ],
                  ),
                  const Gap(12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            a = 1;
                          });
                        },
                        child: Container_add(
                          color: a == 1
                              ? const Color(0xFF9775FA)
                              : const Color(0xFFF5F6FA),
                          text: "S",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            a = 2;
                          });
                        },
                        child: Container_add(
                          color: a == 2
                              ? const Color(0xFF9775FA)
                              : const Color(0xFFF5F6FA),
                          text: "M",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            a = 3;
                          });
                        },
                        child: Container_add(
                          text: "L",
                          color: a == 3
                              ? const Color(0xFF9775FA)
                              : const Color(0xFFF5F6FA),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            a = 4;
                          });
                        },
                        child: Container_add(
                          color: a == 4
                              ? const Color(0xFF9775FA)
                              : const Color(0xFFF5F6FA),
                          text: "XL",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            a = 5;
                          });
                        },
                        child: Container_add(
                          color: a == 5
                              ? const Color(0xFF9775FA)
                              : const Color(0xFFF5F6FA),
                          text: "2XL",
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a ",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF8F959E),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "performance feel with",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF8F959E),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            child: Text(
                              "Read More..",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1D1E20),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ReviewsPages(),
                                ),
                              );
                            },
                          )
                        ],
                      ),
                      Gap(16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reviews",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: const Color(0xFF1D1E20)),
                          ),
                          Text(
                            "Size Guide",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color(0xFF8F959E),
                            ),
                          ),
                        ],
                      ),
                      const ListilePages(
                        text: 'Ronald Richards',
                        image:
                            AssetImage("assets/images/Rectangle 568 (2).png"),
                      )
                    ],
                  )
                ],
              ),
            ),
            ElvationbottomPages(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPages(),
                  ),
                );
              },
              text: 'Add to Cart',
            )
          ],
        ),
      ),
    );
  }
}

class Container_add extends StatelessWidget {
  final String text;
  final Color color;

  const Container_add({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.inter(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
