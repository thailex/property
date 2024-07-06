import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Coloring.ble12,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(),
          child: Text(
            'Add note',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Coloring.ble12,
            )),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // property details
          Container(
            margin:
                const EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 15),
            padding:
                const EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Coloring.otpSelectedBorderColor2,
                    offset: const Offset(4, 2),
                    blurRadius: 4,
                    blurStyle: BlurStyle.outer)
              ],
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                Image.asset(Assets.addNoteImage),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1 bedroom apartment',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk21,
                        )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Postern close, york',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk21,
                        )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '£679,000',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Coloring.blk21,
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Notes are private.Only you can see them.
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Icon(
                  Icons.lock_outline,
                  color: Coloring.blk,
                  size: 10,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Notes are private.Only you can see them.',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ],
            ),
          ),
          // text field form for your property note
          Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.only(
                  top: 30, left: 30, right: 30, bottom: 3),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Coloring.blk10,
                    blurStyle: BlurStyle.outer,
                    offset: const Offset(0, 0),
                    blurRadius: 4)
              ], border: Border.all(color: Coloring.gry15)),
              child: TextFormField(
                maxLines: 7,
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk11,
                )),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Your property note',
                  hintStyle: GoogleFonts.poppins(
                    textStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk22,
                    )),
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 15, right: 15, top: 10),
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
                },
              ),
            ),
          ),
          // 0/1000 characters
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '0/1000 characters',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: Coloring.blk12,
              )),
            ),
          ),
          // Save button
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 25, bottom: 15),
              alignment: Alignment.center,
              width: 290,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.ble13,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Save',
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
          // Delete Note
          Center(
            child: Text(
              'Delete Note',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Coloring.ble13,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
