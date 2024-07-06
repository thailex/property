import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});
  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Center(child: Image.asset(Assets.savedImage)),
              Center(
                child: Text(
                  'Save your favourites',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Coloring.blk,
                  )),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Center(
                child: Text(
                  'Your saved listings will appear here. When ',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              Center(
                child: Text(
                  'your’e contact the agent to arrange a ',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              Center(
                child: Text(
                  'viewing',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(
                  top: 10, bottom: 15, left: 30, right: 30),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.ble13,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Find my next home',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Coloring.wte,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
