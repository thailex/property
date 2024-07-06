import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class Enquiry extends StatefulWidget {
  const Enquiry({super.key});

  @override
  State<Enquiry> createState() => _EnquiryState();
}

class _EnquiryState extends State<Enquiry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coloring.ble14,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(),
          child: Text(
            'Enquiry',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Coloring.wte,
            )),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: Text(
              'Yesterday',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Coloring.blk31,
              )),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(bottom: 25, left: 25, right: 25, top: 10),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 5),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.outer,
                blurRadius: 8,
                offset: const Offset(0, 4),
                color: Coloring.blk10,
              )
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(Assets.enquiryImage),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '£1,345 pcm',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk,
                          )),
                        ),
                        Text(
                          'Apartment',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry4,
                          )),
                        ),
                        Text(
                          'Emperors Wharf',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry4,
                          )),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.business_center_outlined,
                          color: Coloring.blk,
                          size: 17,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          'Leader sales',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk32,
                          )),
                        ),
                      ],
                    ),
                    Text(
                      'Leader sales',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk32,
                      )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
