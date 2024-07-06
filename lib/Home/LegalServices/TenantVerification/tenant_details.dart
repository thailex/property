import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class TenantDetails extends StatefulWidget {
  const TenantDetails({super.key});

  @override
  State<TenantDetails> createState() => _TenantDetailsState();
}

class _TenantDetailsState extends State<TenantDetails> {
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
            ]),
          ),
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
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(),
          child: Text(
            'Tenant Details',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Coloring.wte,
              ),
            ),
          ),
        ),
        toolbarHeight: 70,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // basic details button
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40,
            ),
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 30,
                right: MediaQuery.of(context).size.width / 30,
                top: MediaQuery.of(context).size.height / 80,
                bottom: MediaQuery.of(context).size.height / 80),
            decoration: BoxDecoration(
                color: Coloring.bg2.withOpacity(0.2),
                border: Border.all(color: Coloring.bg2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Coloring.blk.withOpacity(0.1),
                      blurRadius: 2,
                      blurStyle: BlurStyle.normal)
                ]),
            child: Text(
              'Basic Details',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte,
                ),
              ),
            ),
          ),
          // address button
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40,
            ),
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 30,
                right: MediaQuery.of(context).size.width / 30,
                top: MediaQuery.of(context).size.height / 80,
                bottom: MediaQuery.of(context).size.height / 80),
            decoration: BoxDecoration(
                color: Coloring.bg2.withOpacity(0.2),
                border: Border.all(color: Coloring.bg2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Coloring.blk.withOpacity(0.1),
                      blurRadius: 2,
                      blurStyle: BlurStyle.normal)
                ]),
            child: Text(
              'Address',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte,
                ),
              ),
            ),
          ),
          // reference button
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 40,
              right: MediaQuery.of(context).size.width / 40,
            ),
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 30,
                right: MediaQuery.of(context).size.width / 30,
                top: MediaQuery.of(context).size.height / 80,
                bottom: MediaQuery.of(context).size.height / 80),
            decoration: BoxDecoration(
                color: Coloring.bg2.withOpacity(0.2),
                border: Border.all(color: Coloring.bg2),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Coloring.blk.withOpacity(0.1),
                      blurRadius: 2,
                      blurStyle: BlurStyle.normal)
                ]),
            child: Text(
              'Reference',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
