import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/listtile.dart';
import 'add_review.dart';

class ReviewsPages extends StatefulWidget {
  const ReviewsPages({super.key});

  @override
  State<ReviewsPages> createState() => _ReviewsPagesState();
}

class _ReviewsPagesState extends State<ReviewsPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "245 Reviews",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: const Color(0xFF1D1E20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF7043),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddReviewPages(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/addreview.svg"),
                            const Gap(6),
                            Text(
                              "Add Review",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "4.8",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: const Color(0xFF1D1E20),
                      ),
                    ),
                    const Gap(2),
                    SvgPicture.asset("assets/images/ctar.svg"),
                  ],
                ),
              ],
            ),
            const ListilePages(
              text: 'Jenny Wilson',
              image: AssetImage("assets/images/Rectangle 568 (2).png"),
            ),
            const Gap(6),
            const ColumunListail(),
            const ListilePages(
              text: 'Jenny Wilson',
              image: AssetImage("assets/images/Rectangle 568 (3).png"),
            ),
            const Gap(6),
            const ColumunListail(),
            const ListilePages(
              text: 'Jenny Wilson',
              image: AssetImage("assets/images/Rectangle 568 (2).png"),
            ),
            const Gap(6),
            const ColumunListail(),
            const ListilePages(
              text: 'Jenny Wilson',
              image: AssetImage("assets/images/Rectangle 568 (3).png"),
            ),
            const Gap(6),
            const ColumunListail(),
          ],
        ),
      ),
    );
  }
}

class ColumunListail extends StatelessWidget {
  const ColumunListail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF8F959E),
          ),
        ),
      ],
    );
  }
}
