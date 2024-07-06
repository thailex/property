import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/RentalAgreementUploadDraft/summary.dart';

import '../RentalAgreementWithAadharE-Sign/property_details_aadhaar_e_sign.dart';

class UploadDraftContractDetails extends StatefulWidget {
  const UploadDraftContractDetails({super.key});

  @override
  State<UploadDraftContractDetails> createState() =>
      _UploadDraftContractDetailsState();
}

class _UploadDraftContractDetailsState
    extends State<UploadDraftContractDetails> {
  String? selectedValue;
  bool checkBoxValue = false;
  bool isMonthlyRent = false;
  bool isAgreementStartDate = false;
  bool isCheckBox = false;
  bool is100Stamp = false;
  bool is500Stamp = false;
  bool isTenant = false;
  bool isOwner = false;
  bool is6Month = false;
  bool is11Month = false;
  bool other = false;
  List<String> monthsAgreementDuration = [
    '1 Months',
    '2 Months',
    '3 Months',
    '4 Months',
    '5 Months',
    '6 Months',
    '8 Months',
    '9 Months',
    '10 Months',
    '11 Months',
    '12 Months',
    '14 Months',
    '15 Months',
    '16 Months',
    '17 Months',
    '18 Months',
    '19 Months',
    '20 Months',
    '21 Months',
    '22 Months',
    '23 Months',
    '24 Months',
  ];
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
            'Contract Details',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 18),
              child: Text(
                'Get a Valid Rental Agreement from your own PDF File',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Coloring.blk,
                  ),
                ),
              ),
            ),
            // upload document
            Container(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Coloring.bg2),
                color: Coloring.bg2.withOpacity(0.05),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Upload the full document (not just the signature page) as PDF file
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Text(
                      'Upload the full document (not just the signature page) as PDF file',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  Divider(
                    height: 10,
                    color: Coloring.gry.withOpacity(1),
                  ),
                  // upload document
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cloud_upload_outlined,
                        color: Coloring.bg2,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 50,
                      ),
                      Text(
                        'Upload Document',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.bg2,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // I want to override few fields present in the uploaded PDF file.
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
              ),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 0.8,
                    child: Checkbox(
                      visualDensity: const VisualDensity(horizontal: -3.8),
                      value: checkBoxValue,
                      onChanged: (value) {
                        setState(() {
                          checkBoxValue = value!;
                          isCheckBox = !isCheckBox;
                        });
                      },
                      activeColor: Coloring.ble5,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Text(
                      'I want to override few fields present in the uploaded PDF file.',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            // rent amount
            if (isCheckBox == true)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Rent Amount
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Row(
                      children: [
                        Text(
                          'Rent Amount',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk,
                            ),
                          ),
                        ),
                        Text(
                          '*',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Coloring.rd,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //text field for Rent Amount
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk11,
                      )),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        isMonthlyRent = value.isNotEmpty;
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.currency_rupee,
                          color: Coloring.gry11.withOpacity(0.4),
                          size: 15,
                        ),
                        contentPadding: EdgeInsets.zero,
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Coloring.gry11.withOpacity(0.4),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Coloring.gry11.withOpacity(0.4),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Coloring.gry11.withOpacity(0.4),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            // Select Stamp Paper Amount
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  Text(
                    'Select Stamp Paper Amount',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                  Text(
                    '*',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Select Stamp Paper Amount
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        is500Stamp = false;
                        is100Stamp = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 30,
                        right: MediaQuery.of(context).size.width / 30,
                        top: MediaQuery.of(context).size.height / 80,
                        bottom: MediaQuery.of(context).size.height / 80,
                      ),
                      decoration: BoxDecoration(
                          color: is100Stamp
                              ? Coloring.bg2.withOpacity(0.1)
                              : Coloring.transparent,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: (is100Stamp)
                                ? Coloring.bg2
                                : Coloring.gry11.withOpacity(0.4),
                          )),
                      child: Text(
                        'Rs.100 Stamp',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk28,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        is500Stamp = true;
                        is100Stamp = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 30,
                        right: MediaQuery.of(context).size.width / 30,
                        top: MediaQuery.of(context).size.height / 80,
                        bottom: MediaQuery.of(context).size.height / 80,
                      ),
                      decoration: BoxDecoration(
                          color: is500Stamp
                              ? Coloring.bg2.withOpacity(0.1)
                              : Coloring.transparent,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: (is500Stamp)
                                ? Coloring.bg2
                                : Coloring.gry11.withOpacity(0.4),
                          )),
                      child: Text(
                        'Rs.500 Stamp',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk28,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            // Agreement Duration
            if (isCheckBox == true)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Agreement Duration
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: Row(
                      children: [
                        Text(
                          'Agreement Duration',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk,
                            ),
                          ),
                        ),
                        Text(
                          '*',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Coloring.rd,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Agreement Duration
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                is6Month = true;
                                is11Month = false;
                                other = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 30,
                                vertical:
                                    MediaQuery.of(context).size.height / 80,
                              ),
                              decoration: BoxDecoration(
                                color: is6Month
                                    ? Coloring.bg2.withOpacity(0.1)
                                    : Coloring.transparent,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: (is6Month)
                                      ? Coloring.bg2
                                      : Coloring.gry11.withOpacity(0.4),
                                ),
                              ),
                              child: Text(
                                '6 Months',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk28,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                is6Month = false;
                                is11Month = true;
                                other = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 30,
                                vertical:
                                    MediaQuery.of(context).size.height / 80,
                              ),
                              decoration: BoxDecoration(
                                color: is11Month
                                    ? Coloring.bg2.withOpacity(0.1)
                                    : Coloring.transparent,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: (is11Month)
                                      ? Coloring.bg2
                                      : Coloring.gry11.withOpacity(0.4),
                                ),
                              ),
                              child: Text(
                                '11 Months',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk28,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              iconStyleData: const IconStyleData(
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 18,
                                ),
                              ),
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Coloring.wte,
                                ),
                              ),
                              isExpanded: true,
                              hint: Text(
                                'Other',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk28,
                                  ),
                                ),
                              ),
                              items: monthsAgreementDuration
                                  .map(
                                      (String item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Coloring.blk28,
                                                ),
                                              ),
                                            ),
                                          ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue = value;
                                  is6Month = false;
                                  is11Month = false;
                                  other = true;
                                });
                              },
                              buttonStyleData: ButtonStyleData(
                                decoration: BoxDecoration(
                                  color: other
                                      ? Coloring.bg2.withOpacity(0.1)
                                      : Coloring.transparent,
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: (other)
                                        ? Coloring.bg2
                                        : Coloring.gry11.withOpacity(0.4),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width / 30,
                                  vertical:
                                      MediaQuery.of(context).size.height / 80,
                                ),
                                width: MediaQuery.of(context).size.width / 3,
                                height: 40,
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            // Agreement Start Date
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    'Agreement Start Date',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                  Text(
                    '*',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // text field for Agreement Start Date
            Container(
              height: 40,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: TextFormField(
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk11,
                )),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    isAgreementStartDate = value.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'eg.25/7/2024',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry11.withOpacity(0.6),
                  )),
                  contentPadding: const EdgeInsets.only(left: 15),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
                },
              ),
            ),
            // I am
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Text(
                'I am:',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Coloring.blk,
                  ),
                ),
              ),
            ),
            // I am tenant or owner
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isTenant = true;
                        isOwner = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 30,
                        right: MediaQuery.of(context).size.width / 30,
                        top: MediaQuery.of(context).size.height / 80,
                        bottom: MediaQuery.of(context).size.height / 80,
                      ),
                      decoration: BoxDecoration(
                          color: isTenant
                              ? Coloring.bg2.withOpacity(0.1)
                              : Coloring.transparent,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: (isTenant)
                                ? Coloring.bg2
                                : Coloring.gry11.withOpacity(0.4),
                          )),
                      child: Text(
                        'Tenant',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk28,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isTenant = false;
                        isOwner = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 30,
                        right: MediaQuery.of(context).size.width / 30,
                        top: MediaQuery.of(context).size.height / 80,
                        bottom: MediaQuery.of(context).size.height / 80,
                      ),
                      decoration: BoxDecoration(
                          color: isOwner
                              ? Coloring.bg2.withOpacity(0.1)
                              : Coloring.transparent,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: (isOwner)
                                ? Coloring.bg2
                                : Coloring.gry11.withOpacity(0.4),
                          )),
                      child: Text(
                        'Owner',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk28,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            // Landlord Name
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    'Landlord Name',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                  Text(
                    '*',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // text field for Landlord Name
            Container(
              height: 40,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: TextFormField(
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk11,
                )),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    isAgreementStartDate = value.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter Landlord Name',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry11.withOpacity(0.6),
                  )),
                  contentPadding: const EdgeInsets.only(left: 15),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
                },
              ),
            ),
            // Add more Landlord
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Coloring.bg2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Add more Landlord',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Coloring.wte,
                  ),
                ),
              ),
            ),
            // Tenant Name
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    'Tenant Name',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                  Text(
                    '*',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // text field for Tenant Name
            Container(
              height: 40,
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: TextFormField(
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk11,
                )),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    isAgreementStartDate = value.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter Tenant Name',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry11.withOpacity(0.6),
                  )),
                  contentPadding: const EdgeInsets.only(left: 15),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required Field';
                  }
                  return null;
                },
              ),
            ),
            // Add more Tenant
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10, bottom: 18),
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Coloring.bg2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Add more Tenant',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Coloring.wte,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  // isSave = true;

                  // Process your form submission
                  // For example, navigate to the next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SummaryUploadDraft()),
                  );
                });
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                margin: const EdgeInsets.only(
                  right: 15,
                  left: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Coloring.bg1,
                    Coloring.bg2,
                    Coloring.bg3,
                  ]),
                ),
                child: Text(
                  'Save and Continue',
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
            )
          ],
        )
      ],
    );
  }
}
