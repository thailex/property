import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> paymentType = ['House Rent', 'Rent', 'Houses Rent'];
  final List<String> countryCode = [
    '+91',
    '+44',
    '+41',
    '+97',
  ];
  List<AccountDetails> accountDetails = [
    AccountDetails(name: 'Bank Account Number'),
    AccountDetails(name: 'Confirm Account Number'),
    AccountDetails(name: 'IFSC Code'),
    AccountDetails(name: 'Property Address'),
    AccountDetails(name: 'Rent Amount'),
  ];
  String? _paymentType;
  String? selectedValue;
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
            'Payment Method',
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Your Details
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  'Your Details',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // Your Details
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 5),
                child: Text(
                  'Mary Jerry,prideareal@gmail.com,7911123456',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry21,
                  )),
                ),
              ),
              // Payment Details
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Payment Details',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // Payment Details
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 5),
                child: Text(
                  'Fill your payment details once and we will save it',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry21,
                  )),
                ),
              ),
              // payment type
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Payment Type',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // drop down text field for payment type
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 3, bottom: 10),
                child: DropdownButtonFormField(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry14,
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Coloring.gry14,
                  ),
                  value: _paymentType,
                  items:
                      paymentType.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _paymentType = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(Assets.paymentTypeImage),
                    contentPadding:
                        const EdgeInsets.only(right: 15, top: 0, bottom: 0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'House Rent',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      height: 3,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk33,
                    )),
                  ),
                ),
              ),
              // Landlord Name (As per bank records)
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Landlord Name (As per bank records)',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // text field form for Landlord Name (As per bank records)
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 3, bottom: 10),
                child: TextFormField(
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
                    hintText: 'Your Name',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      height: 3,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk33,
                    )),
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
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
              // Landlord Number
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Landlord Number',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // text field for Landlord number
              Container(
                height: 40,
                padding: const EdgeInsets.only(left: 15),
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 3, bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Coloring.gry11.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    // drop down field for mobile number
                    SizedBox(
                      width: 40,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          iconStyleData: IconStyleData(
                              icon: Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Coloring.blk33,
                            size: 18,
                          )),
                          dropdownStyleData: DropdownStyleData(
                              maxHeight: 100,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              )),
                          isExpanded: true,
                          hint: Text(
                            '+44',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              height: 3,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Coloring.blk33,
                            )),
                          ),
                          items: countryCode
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        height: 3,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.blk11,
                                      )),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.only(right: 0),
                            height: 30,
                            width: 70,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                    // text field for mobile number
                    SizedBox(
                      width: 180,
                      child: TextFormField(
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
                          hintText: 'Enter Landlord Number',
                          hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            height: 3,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk33,
                          )),
                          contentPadding:
                              const EdgeInsets.only(right: 25, bottom: 9),
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
                  ],
                ),
              ),
              // Choose payment mode
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Choose payment mode',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // text field form for account details
              ListView.builder(
                itemCount: accountDetails.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Account Details name
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 10),
                        child: Text(
                          accountDetails[index].name,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk,
                          )),
                        ),
                      ),
                      // text field form for Account Details
                      Container(
                        height: 40,
                        margin: const EdgeInsets.only(
                            left: 30, right: 30, top: 3, bottom: 10),
                        child: TextFormField(
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk11,
                          )),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            // hintText: 'Your Name',
                            // hintStyle: GoogleFonts.poppins(
                            //     textStyle: TextStyle(
                            //       height: 3,
                            //       fontSize: 10,
                            //       fontWeight: FontWeight.w400,
                            //       color: Coloring.blk33,
                            //     )),
                            contentPadding:
                                const EdgeInsets.only(right: 15, left: 15),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Coloring.gry11.withOpacity(0.4),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Coloring.gry11.withOpacity(0.4),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Coloring.gry11.withOpacity(0.4),
                              ),
                              borderRadius: BorderRadius.circular(15),
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
                  );
                },
              ),
              // Upload Rental Agreement (Optional)
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Upload Rental Agreement (Optional)',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // Choose file for Upload Rental Agreement (Optional)
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 5),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Coloring.wte15,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Coloring.gry22)),
                        child: Text(
                          'Choose file',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk,
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'No file chosen',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk,
                      )),
                    ),
                  ],
                ),
              ),
              // bottom button for sent
              Center(
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.only(
                      top: 50, bottom: 50, left: 30, right: 30),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Coloring.ble13,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Sent',
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
        ),
      ),
    );
  }
}

// to show account details name
class AccountDetails {
  String name;
  AccountDetails({required this.name});
}
