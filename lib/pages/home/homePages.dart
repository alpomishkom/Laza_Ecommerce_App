
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laza_ecommerce/pages/home/product_detail/product_detail_pages.dart';

import '../../main.dart';
import 'nike/nike_pages.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      drawer: Drawer(
        child: DrawerHeader(
          child: Column(
            children: [
              ListTile(
                leading: const Image(
                    image: AssetImage("assets/images/Frame 1 1.png")),
                title: const Text("Mrh Raju"),
                subtitle: const Text(
                  "Verified Profile",
                  style: TextStyle(fontSize: 12),
                ),
                trailing: Container(
                  width: 50,
                  height: 30,
                  decoration: const BoxDecoration(color: Color(0xFFF5F5F5)),
                  child: Text(
                    "3 Orders",
                    style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF8F959E)),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.sunny),
                title: Text("Dark Mode"),
                trailing: CupertinoSwitch(
                  value: isDarkMode,
                  onChanged: (value) {
                    isChangeTheme.value = !isChangeTheme.value;
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ),
              Gap(20),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/error.svg'),
                  Gap(10),
                  Text(
                    'Account Information',
                    style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/lock.svg'),
                  Gap(10),
                  Text(
                    'Password',
                    style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/bag.svg',color: Colors.black,),
                  Gap(10),
                  Text(
                    'Shop',
                    style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/card.svg',color: Colors.black,),
                  Gap(10),
                  Text(
                    'My Cards',
                    style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),
                  ),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/heard.svg',color: Colors.black,),
                  Gap(10),
                  Text(
                    'Wishlist',
                    style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),
                  ),
                ],
              ),Gap(20),
              Row(
                children: [
                  // ignore: deprecated_member_use
                  SvgPicture.asset('assets/icons/settingis.svg',color: Colors.black,),
                  Gap(10),
                  Text(
                    'Settings',
                    style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w400,color: Colors.black),
                  ),
                ],
              ),
              Spacer(flex: 5,),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/logout.svg'),
                  Gap(10),
                  Text(
                    'Logout',
                    style: GoogleFonts.inter(
                        fontSize: 15, fontWeight: FontWeight.w400,color: Colors.red),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: CupertinoColors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset("assets/icons/shop.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style: GoogleFonts.inter(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Welcome to Laza.",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF8F959E),
              ),
            ),
            const Gap(20),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            CupertinoIcons.search,
                            color: Color(0xFF8F959E),
                          ),
                          hintText: "Search...",
                          filled: true,
                          fillColor: const Color(0xFFF5F6FA),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                const Gap(10),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF9775FA)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset("assets/icons/mikrafon.svg"),
                  ),
                )
              ],
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Choose Brand",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color(0xFF1D1E20),
                  ),
                ),
                Text(
                  "View All",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: const Color(0xFF8F959E),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F6FA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => NikePages()));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: CupertinoColors.white),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                    "assets/icons/${_madelImages.elementAt(index)}.svg"),
                              ),
                            ),
                          ),
                        ),
                        const Gap(10),
                        Text(
                          "${_madelTex.elementAt(index)}",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF1D1E20),
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 3,
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 500 / 2),
                  itemBuilder: (context, index) {
                    return Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ProductDetailPages()));
                        },
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Image(
                                image: AssetImage(
                                    "assets/images/nike-sportswear-club-fleece-tropical-twist-printed-hoodie-1-removebg-preview (1).png"),
                              ),
                            ),
                            Align(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 26, top: 28),
                                child:
                                    SvgPicture.asset("assets/images/head.svg"),
                              ),
                              alignment: Alignment.topRight,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 6,
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

List<String> _madelImages = ["adidas", "nike", "fila"];
List<String> _madelTex = ["Adidas", "Nike", "Fila"];
