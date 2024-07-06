import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coloring.ble14,
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
            'Delete Account',
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
          // Are you sure you want to delete your account?
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              'Are you sure you want to',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Coloring.blk27,
              )),
            ),
          ),
          // Are you sure you want to delete your account?
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'delete your account?',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Coloring.blk27,
              )),
            ),
          ),
          // Deleting your account will delete the account itself and any information contained in the account.
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            width: 280,
            child: Text(
              'Deleting your account will delete the account itself and any information contained in the account.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Coloring.blk25,
              )),
            ),
          ),
          // We may hold other personal information which is not linked to your account.
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            width: 280,
            child: Text(
              'We may hold other personal information which is not linked to your account.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Coloring.blk25,
              )),
            ),
          ),
          // For more information,please view our privacy policy
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            width: 260,
            child: RichText(
                text: TextSpan(
                    text: 'For more information,please view our ',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk25,
                    )),
                    children: [
                  TextSpan(
                    text: 'privacy policy',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gradient2,
                    )),
                  ),
                ])),
          ),
          // This action will be completed in the website, you may be asked to sign in to confirm.
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            width: 280,
            child: Text(
              'This action will be completed in the website, you may be asked to sign in to confirm.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Coloring.blk25,
              )),
            ),
          ),
          const Spacer(),
          // bottom button for Yes,take me to the web
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              alignment: Alignment.center,
              width: 290,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.ble13,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Yes,take me to the web',
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
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 18),
                alignment: Alignment.center,
                width: 290,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Coloring.ble13,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'No, go back',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Coloring.ble13,
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
