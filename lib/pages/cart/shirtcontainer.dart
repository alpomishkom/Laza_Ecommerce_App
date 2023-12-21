import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ShirtContainer extends StatelessWidget {
  final Color color;
  final ImageProvider<Object> image;

  const ShirtContainer({
    super.key,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.177,
        decoration: BoxDecoration(boxShadow: [
          const BoxShadow(
              color: Colors.black45, offset: Offset(0, 9), blurRadius: 10),
        ], borderRadius: BorderRadius.circular(10), color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(image: image),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Men`s Tie-Dye T-Shirt\nNike Sportswear',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  '\$45 (-\$4.00 Tax)',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black38,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.arrow_circle_down_rounded,
                      size: 40,
                      color: Color(0xFF8F959E),
                    ),
                    const Gap(10),
                    const Text(
                      '1',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Gap(10),
                    const Icon(
                      Icons.arrow_circle_up_rounded,
                      size: 40,
                      color: Color(0xFF8F959E),
                    ),
                    Gap(
                      MediaQuery.of(context).size.height * 0.10,
                    ),
                    const Icon(
                      Icons.delete,
                      size: 30,
                      color: Color(0xFF8F959E),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
