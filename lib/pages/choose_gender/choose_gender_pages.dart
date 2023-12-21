import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../create_an_account/create_an_account.dart';

class ChooseGenderPages extends StatefulWidget {
  const ChooseGenderPages({super.key});

  @override
  State<ChooseGenderPages> createState() => _ChooseGenderPagesState();
}

class _ChooseGenderPagesState extends State<ChooseGenderPages> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFB0A3E5),
                    Color(0xFF7661C5),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05),
                    child: Center(
                      child: Image(
                        image: a == 1
                            ? const AssetImage(
                                "assets/images/pesonmadel.png",
                              )
                            : const AssetImage(
                                "assets/images/polo-ralph-lauren-women-s-umpire-twill-coat-navy-211871838001-front-removebg-preview.png",
                              ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.7,
                          left: 16,
                          right: 16),
                      child: Container(
                        width: double.maxFinite,
                        height: 256,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Text(
                                "Look Good, Feel Good",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 26,
                                  color: const Color(0xFF1D1E20),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Create your individual & unique style and \n look amazing everyday.",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: const Color(0xFF8F959E),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: a == 1
                                            ? const Color(0xFF9775FA)
                                            : Colors.white,
                                        fixedSize: const Size(152, 60),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                    onPressed: () {
                                      setState(() {
                                        a = 1;
                                      });
                                    },
                                    child: Text(
                                      "Men",
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: a == 1
                                            ? CupertinoColors.white
                                            : const Color(0xFF8F959E),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: a == 2
                                          ? const Color(0xFF9775FA)
                                          : Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      fixedSize: const Size(152, 60),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        a = 2;
                                      });
                                    },
                                    child: Text(
                                      "Women",
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: a == 2
                                            ? Colors.white
                                            : const Color(0xFF8F959E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CreateanAccount(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "skib",
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: const Color(0xFF8F959E),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
