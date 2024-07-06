import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class LeaseHold extends StatefulWidget {
  const LeaseHold({super.key});

  @override
  State<LeaseHold> createState() => _LeaseHoldState();
}

class _LeaseHoldState extends State<LeaseHold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Coloring.bg1,
            Coloring.bg2,
            Coloring.bg3,
          ])),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Coloring.wte,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(),
          child: Text(
            'Leasehold',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'GROUND RENT ',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk,
                )),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '£16 per year',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk36,
                )),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '(Ask agent aboutr the review period)',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk,
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'SERVICE CHARGE',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk,
                )),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '£1090 per year',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk36,
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'SERVICE CHARGE',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk,
                )),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '100 Years left',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk36,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
