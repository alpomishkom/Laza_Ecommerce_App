import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/cart/shirtcontainer.dart';
import 'package:laza_ecommerce/pages/widget/elvationbottom_pages.dart';

import 'address_pages/address_pages.dart';
import 'address_pages/payment_pages.dart';
import 'order_confirmed/order_confirmed.dart';

class CartPages extends StatefulWidget {
  CartPages({super.key});

  @override
  State<CartPages> createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
        title: Text(
          "Cart",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ShirtContainer(
                image: AssetImage("assets/images/image 7.png"),
                color: Colors.white,
              ),
              const ShirtContainer(
                image: AssetImage("assets/images/image 8.png"),
                color: Color(0xFFF5F6FA),
              ),
              const Gap(20),
              InkWell(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Delivery Address',
                    ),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddressPages(),
                    ),
                  );
                },
              ),
              const Gap(16),
              const ListailWidgetCad(
                text: 'Chhatak, Sunamgonj 12/8AB',
                image: AssetImage("assets/images/Rectangle 584.png"),
                text1: 'Sylhet',
              ),
              const Gap(20),
              InkWell(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: 'Payment Method',
                    ),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentPages(),
                    ),
                  );
                },
              ),
              const Gap(16),
              const ListailWidgetCad(
                text: 'Visa Classic',
                image: AssetImage("assets/images/Rectangle 584.png"),
                text1: '**** 7690',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order Info",
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1D1E20)),
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8F959E)),
                      ),
                      Text(
                        r"$110",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1D1E20)),
                      )
                    ],
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping cost",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8F959E)),
                      ),
                      Text(
                        r"$10",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1D1E20)),
                      )
                    ],
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8F959E)),
                      ),
                      Text(
                        r"$120",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF1D1E20)),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ElvationbottomPages(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderConfirmed(),
            ),
          );
        },
        text: 'Checkout',
      ),
    );
  }
}

class ListailWidgetCad extends StatelessWidget {
  final String text;
  final String text1;
  final ImageProvider<Object> image;

  const ListailWidgetCad({
    super.key,
    required this.text,
    required this.image,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image(
            image: image,
          ),
          title: Text(
            text,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              color: const Color(0xFF1D1E20),
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            text1,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              color: const Color(0xFF8F959E),
              fontSize: 14,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: const Color(0xFF4AC76D),
              child: SvgPicture.asset("assets/icons/cake.svg"),
            ),
          ),
        )
      ],
    );
  }
}

class MyText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;

  const MyText({
    super.key,
    required this.text,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? 'Delivery Adres',
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          fontSize: size ?? 20,
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
