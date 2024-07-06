import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Accounts/account.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Enquiry/enquiry.dart';
import 'package:prides_sales_and_lettings/Home/home.dart';
import 'package:prides_sales_and_lettings/saved/saved.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // to show list of navigation screens
  List screens = [
    const Home(),
    const Saved(),
    const Enquiry(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeInOutCubicEmphasized,
        backgroundColor: const Color.fromRGBO(42, 47, 95, 1),
        buttonBackgroundColor: const Color.fromRGBO(42, 47, 95, 1),
        color: const Color.fromRGBO(42, 47, 95, 1),
        key: _bottomNavigationKey,
        items: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                SvgPicture.asset(Assets.home),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Home',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Coloring.wte,
                    )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                SvgPicture.asset(Assets.saved),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Saved',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Coloring.wte,
                    )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                SvgPicture.asset(Assets.enquiry),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Enquiry',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Coloring.wte,
                    )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                SvgPicture.asset(Assets.profile),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    'Profile',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Coloring.wte,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: screens.elementAt(_page),
    );
  }
}
