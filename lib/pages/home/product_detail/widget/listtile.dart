import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ListilePages extends StatelessWidget {
  final String text;
  final ImageProvider<Object> image;

  const ListilePages({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: image),
      title: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF1D1E20),
        ),
      ),
      subtitle: Row(
        children: [
          SvgPicture.asset("assets/images/clok.svg"),
          Text(
            "13 Sep, 2020",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: Color(0xFF8F959E),
            ),
          ),
        ],
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "4.8",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1D1E20),
                ),
              ),
              Gap(6),
              Text(
                "rating",
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8F959E),
                ),
              ),
            ],
          ),
          SvgPicture.asset("assets/images/ctar.svg"),
        ],
      ),
    );
  }
}
