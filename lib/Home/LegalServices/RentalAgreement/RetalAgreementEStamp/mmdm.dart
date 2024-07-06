import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/rent_agreement.dart';

class StampContrac extends StatefulWidget {
  const StampContrac({super.key});

  @override
  State<StampContrac> createState() => _StampContracState();
}

class _StampContracState extends State<StampContrac> {
  bool isSave = false;
  bool isMonthlyRent = false;
  bool isIncreasePercentage = false;
  bool isRefundableDepositAmount = false;
  bool isAgreementStartDate = false;
  bool isEnterRentDate = false;
  bool isAddPaymentDetails = false;
  bool isAddAmenities = false;
  bool is6Month = false;
  bool is11Month = false;
  bool is0NoticePeriod = false;
  bool is1NoticePeriod = false;
  bool is2NoticePeriod = false;
  bool is3NoticePeriod = false;
  bool is0LockIn = false;
  bool is1LockIn = false;
  bool isOtherLockIn = false;
  bool is100Stamp = false;
  bool is500Stamp = false;
  bool isTenant = false;
  bool isOwner = false;
  bool isCheckBox = false;
  bool other = false;
  String? selectedValue;
  bool checkBoxValue = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
  List<String> monthsMinimumLockInPeriod = [
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Refundable Deposit Amount
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                child: Row(
                  children: [
                    Text(
                      'Refundable Deposit Amount',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

              /// text field for Refundable Deposit Amount
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
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
                      isRefundableDepositAmount = value.isNotEmpty;
                    });
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
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 20,
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

              // Refundable Deposit Amount validation
              if (!isRefundableDepositAmount && isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// Select Stamp Paper Amount
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  children: [
                    Text(
                      'Select Stamp Paper Amount',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

              /// Select Stamp Paper Amount
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 5, left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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

              //  Select Stamp Paper Amount validation
              if (!is500Stamp && !is100Stamp && isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// Agreement Duration
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  children: [
                    Text(
                      'Agreement Duration',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

              /// Agreement Duration
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
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
                            horizontal: MediaQuery.of(context).size.width / 30,
                            vertical: MediaQuery.of(context).size.height / 80,
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
                            horizontal: MediaQuery.of(context).size.width / 30,
                            vertical: MediaQuery.of(context).size.height / 80,
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
                              .map((String item) => DropdownMenuItem<String>(
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
                              vertical: MediaQuery.of(context).size.height / 80,
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

              // Agreement Duration validation
              if (!is6Month && !is11Month && !other && isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// Monthly Rent Amount
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Monthly Rent Amount',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

              ///text field for Monthly Rent Amount
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
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
                      return 'Required Field';
                    }
                    return null;
                  },
                ),
              ),

              // Monthly Rent Amount validation
              if (!isMonthlyRent && isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// checkbox for increase rent
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
                    Text(
                      isCheckBox == true
                          ? 'Increase Rent after 11 months'
                          : 'Increase Rent',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk12,
                      )),
                    ),
                  ],
                ),
              ),
              if (isCheckBox == true)

                /// Increase in percentage
                Column(
                  children: [
                    // Increase in percentage
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 0),
                      child: Row(
                        children: [
                          Text(
                            'Increase in percentage',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
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
                    // text field for Monthly Rent Amount
                    Container(
                      height: 40,
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 5),
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
                            isIncreasePercentage = value.isNotEmpty;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: 'eg.15%',
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
                  ],
                ),

              // Increase in percentage validation
              if (!isIncreasePercentage && isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// Agreement Start Date
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
                child: Row(
                  children: [
                    Text(
                      'Agreement Start Date',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

              /// text field for Agreement Start Date
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
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
                      errorBorder: OutlineInputBorder(
                        gapPadding: 10,
                        borderSide: BorderSide(
                          color: Coloring.gry11.withOpacity(0.4),
                        ),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Required Field';
                    }
                    return null;
                  },
                ),
              ),

              // Agreement Start Date validation
              if (!isAgreementStartDate && isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// I am
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Text(
                  'I am:',
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

              /// I am tenant or owner
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 5, left: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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

              // //  Select Stamp Paper Amount validation
              // if (!isTenant && !isOwner && isSave == true)
              //   Padding(
              //     padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              //     child: Text(
              //       'Required Field',
              //       style: GoogleFonts.poppins(
              //         textStyle: TextStyle(
              //           decoration: TextDecoration.none,
              //           fontSize: 10,
              //           fontWeight: FontWeight.w400,
              //           color: Coloring.rd,
              //         ),
              //       ),
              //     ),
              //   ),

              /// Minimum LockIn Period(In months)
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  children: [
                    Text(
                      'Minimum LockIn Period(In months)',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

              /// Minimum LockIn Period(In months)
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          is0LockIn = true;
                          is1LockIn = false;
                          isOtherLockIn = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10,
                          right: MediaQuery.of(context).size.width / 10,
                          top: MediaQuery.of(context).size.height / 80,
                          bottom: MediaQuery.of(context).size.height / 80,
                        ),
                        decoration: BoxDecoration(
                            color: is0LockIn
                                ? Coloring.bg2.withOpacity(0.1)
                                : Coloring.transparent,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: (is0LockIn)
                                  ? Coloring.bg2
                                  : Coloring.gry11.withOpacity(0.4),
                            )),
                        child: Text(
                          '0',
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
                          is0LockIn = false;
                          is1LockIn = true;
                          isOtherLockIn = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 10,
                          right: MediaQuery.of(context).size.width / 10,
                          top: MediaQuery.of(context).size.height / 80,
                          bottom: MediaQuery.of(context).size.height / 80,
                        ),
                        decoration: BoxDecoration(
                            color: is1LockIn
                                ? Coloring.bg2.withOpacity(0.1)
                                : Coloring.transparent,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: (is1LockIn)
                                  ? Coloring.bg2
                                  : Coloring.gry11.withOpacity(0.4),
                            )),
                        child: Text(
                          '1',
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
                        items: monthsMinimumLockInPeriod
                            .map((String item) => DropdownMenuItem<String>(
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
                            is0LockIn = false;
                            is1LockIn = false;
                            isOtherLockIn = true;
                          });
                        },
                        buttonStyleData: ButtonStyleData(
                            decoration: BoxDecoration(
                                color: isOtherLockIn
                                    ? Coloring.bg2.withOpacity(0.1)
                                    : Coloring.transparent,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: (isOtherLockIn)
                                      ? Coloring.bg2
                                      : Coloring.gry11.withOpacity(0.4),
                                )),
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 30,
                              right: MediaQuery.of(context).size.width / 30,
                              top: MediaQuery.of(context).size.height / 80,
                              bottom: MediaQuery.of(context).size.height / 80,
                            ),
                            width: MediaQuery.of(context).size.width / 3,
                            height: 40),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                          padding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),

              // Minimum LockIn Period(In months) validation
              if (!is0LockIn && !is1LockIn && !isOtherLockIn && isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// Enter Rent Day
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Enter Rent Day',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

              /// text field for Enter Rent Day
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
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
                      isEnterRentDate = value.isNotEmpty;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'eg.30',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.6),
                    )),
                    contentPadding: EdgeInsets.only(left: 15),
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
              //  Select Stamp Paper Amount validation
              if (!isEnterRentDate && isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// Notice Period(In months)
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  children: [
                    Text(
                      'Notice Period(In months)',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
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

              /// Notice Period(In months)
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              is0NoticePeriod = true;
                              is1NoticePeriod = false;
                              is2NoticePeriod = false;
                              is3NoticePeriod = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 20,
                              right: MediaQuery.of(context).size.width / 20,
                              top: MediaQuery.of(context).size.height / 80,
                              bottom: MediaQuery.of(context).size.height / 80,
                            ),
                            decoration: BoxDecoration(
                                color: is0NoticePeriod
                                    ? Coloring.bg2.withOpacity(0.1)
                                    : Coloring.transparent,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: (is0NoticePeriod)
                                      ? Coloring.bg2
                                      : Coloring.gry11.withOpacity(0.4),
                                )),
                            child: Text(
                              '0',
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
                              is0NoticePeriod = false;
                              is1NoticePeriod = true;
                              is2NoticePeriod = false;
                              is3NoticePeriod = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 20,
                              right: MediaQuery.of(context).size.width / 20,
                              top: MediaQuery.of(context).size.height / 80,
                              bottom: MediaQuery.of(context).size.height / 80,
                            ),
                            decoration: BoxDecoration(
                                color: is1NoticePeriod
                                    ? Coloring.bg2.withOpacity(0.1)
                                    : Coloring.transparent,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: (is1NoticePeriod)
                                      ? Coloring.bg2
                                      : Coloring.gry11.withOpacity(0.4),
                                )),
                            child: Text(
                              '1',
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
                              is0NoticePeriod = false;
                              is1NoticePeriod = false;
                              is2NoticePeriod = true;
                              is3NoticePeriod = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 20,
                              right: MediaQuery.of(context).size.width / 20,
                              top: MediaQuery.of(context).size.height / 80,
                              bottom: MediaQuery.of(context).size.height / 80,
                            ),
                            decoration: BoxDecoration(
                                color: is2NoticePeriod
                                    ? Coloring.bg2.withOpacity(0.1)
                                    : Coloring.transparent,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: (is2NoticePeriod)
                                      ? Coloring.bg2
                                      : Coloring.gry11.withOpacity(0.4),
                                )),
                            child: Text(
                              '2',
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
                              is0NoticePeriod = false;
                              is1NoticePeriod = false;
                              is2NoticePeriod = false;
                              is3NoticePeriod = true;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 20,
                              right: MediaQuery.of(context).size.width / 20,
                              top: MediaQuery.of(context).size.height / 80,
                              bottom: MediaQuery.of(context).size.height / 80,
                            ),
                            decoration: BoxDecoration(
                                color: is3NoticePeriod
                                    ? Coloring.bg2.withOpacity(0.1)
                                    : Coloring.transparent,
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                  color: (is3NoticePeriod)
                                      ? Coloring.bg2
                                      : Coloring.gry11.withOpacity(0.4),
                                )),
                            child: Text(
                              '3',
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
                    ],
                  ),
                ),
              ),
              // Notice Period(In months) validation
              if (!is0NoticePeriod &&
                  !is1NoticePeriod &&
                  !is2NoticePeriod &&
                  !is3NoticePeriod &&
                  isSave == true)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                  child: Text(
                    'Required Field',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.rd,
                      ),
                    ),
                  ),
                ),

              /// Deposit Payment Details
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 15, bottom: 5),
                child: Text(
                  'Deposit Payment Details',
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

              /// Add Payment Details
              GestureDetector(
                onTap: () {
                  isAddPaymentDetails = true;
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 30,
                    right: MediaQuery.of(context).size.width / 30,
                    top: MediaQuery.of(context).size.height / 100,
                    bottom: MediaQuery.of(context).size.height / 100,
                  ),
                  decoration: BoxDecoration(
                      color: Coloring.bg2.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Coloring.bg2,
                      )),
                  child: Text(
                    'Add Payment Details',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.bg2,
                      ),
                    ),
                  ),
                ),
              ),

              // // Add Payment Details validation
              // if (!isAddPaymentDetails && isSave == true)
              //   Padding(
              //     padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              //     child: Text(
              //       'Required Field',
              //       style: GoogleFonts.poppins(
              //         textStyle: TextStyle(
              //           decoration: TextDecoration.none,
              //           fontSize: 10,
              //           fontWeight: FontWeight.w400,
              //           color: Coloring.rd,
              //         ),
              //       ),
              //     ),
              //   ),

              /// Amenities
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 15, bottom: 5),
                child: Text(
                  'Amenities',
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

              /// Add Amenities
              GestureDetector(
                onTap: () {
                  setState(() {
                    isAddAmenities = true;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                  ),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 30,
                    right: MediaQuery.of(context).size.width / 30,
                    top: MediaQuery.of(context).size.height / 100,
                    bottom: MediaQuery.of(context).size.height / 100,
                  ),
                  decoration: BoxDecoration(
                      color: Coloring.bg2.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Coloring.bg2,
                      )),
                  child: Text(
                    'Add Amenities',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.bg2,
                      ),
                    ),
                  ),
                ),
              ),

              // // Add Amenities validation
              // if (!isAddAmenities && isSave == true)
              //   Padding(
              //     padding: const EdgeInsets.only(
              //         left: 10, right: 10, top: 5, bottom: 30),
              //     child: Text(
              //       'Required Field',
              //       style: GoogleFonts.poppins(
              //         textStyle: TextStyle(
              //           decoration: TextDecoration.none,
              //           fontSize: 10,
              //           fontWeight: FontWeight.w400,
              //           color: Coloring.rd,
              //         ),
              //       ),
              //     ),
              //   ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSave = !isSave;
                });
                if (_formKey.currentState!.validate()) {
                  // Process your form submission
                  // For example, navigate to the next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RentAgreement()),
                  );
                }
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
