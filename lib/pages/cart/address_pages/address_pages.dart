import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/widget/textforimfilld.dart';

import '../../widget/elvationbottom_pages.dart';

class AddressPages extends StatefulWidget {
  const AddressPages({super.key});

  @override
  State<AddressPages> createState() => _AddressPagesState();
}

class _AddressPagesState extends State<AddressPages> {
  bool isSwich = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Address"),),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          children: [
            const Gap(20),
            const MyTextfilldd(topText: "Name",hintTexte: "Mrh Raju",),
            const Gap(20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 160,height:93,child: MyTextfilldd(topText: "Country",hintTexte: "Bangladesh",)),
                SizedBox(width: 160,height:93,child: MyTextfilldd(topText: "City",hintTexte: "Sylhet",)),
              ],
            ),
            const Gap(18),
            const MyTextfilldd(topText: "Phone Number",hintTexte: "+880 1453-987533",),
            const Gap(18),
            const MyTextfilldd(topText: "Address",hintTexte: "Chhatak, Sunamgonj 12/8AB",),
            Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Text("Save as primary address",style: GoogleFonts.inter(
                   fontSize: 16,
                   fontWeight: FontWeight.w600,
                 ),),
                CupertinoSwitch(
                  value: isSwich,
                  onChanged: (value) {
                    setState(() {
                      isSwich = value;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElvationbottomPages(onPressed: () {}, text: 'Save Address',),
    );
  }
}
