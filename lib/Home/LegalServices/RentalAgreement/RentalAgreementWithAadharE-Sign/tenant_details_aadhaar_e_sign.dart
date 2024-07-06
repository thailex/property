import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/RetalAgreementEStamp/summary.dart';

class TenantDetailsAadhaarESign extends StatefulWidget {
  const TenantDetailsAadhaarESign({super.key});

  @override
  State<TenantDetailsAadhaarESign> createState() =>
      _TenantDetailsAadhaarESignState();
}

class _TenantDetailsAadhaarESignState extends State<TenantDetailsAadhaarESign> {
  String? selectedValue;
  bool checkBoxValue = false;
  bool isCheckBox = false;
  String? isSelectGender;
  String? isSelectPartyType;
  final List<String> selectGender = ['Male', 'Female', 'Other'];
  final List<String> selectPartyType = [
    'Owner',
    'Advocate',
    'Buyer',
    'Customer',
    'Tenant',
    'Witness'
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
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                margin: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10, top: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Coloring.gry11.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:
                    // ListTile(
                    //   leading:Container(
                    //     padding: const EdgeInsets.only(
                    //         left: 6, right: 6, bottom: 4, top: 4),
                    //     decoration: BoxDecoration(
                    //       color: Coloring.bg2.withOpacity(0.5),
                    //     ),
                    //     child: Image.asset(
                    //       'assets/shareIcon.png',
                    //       scale: 2.5,
                    //     ),
                    //   ),
                    //   title:SizedBox(
                    //     width: 250,
                    //     child: Text(
                    //       "Don't know your Landlord details?",
                    //       style: GoogleFonts.poppins(
                    //         textStyle: TextStyle(
                    //           decoration: TextDecoration.none,
                    //           fontSize: 10,
                    //           fontWeight: FontWeight.w400,
                    //           color: Coloring.blk,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    //   subtitle:SizedBox(
                    //     width: 250,
                    //     child: Text(
                    //       "Share form with them with the quick and easy completion!",
                    //       style: GoogleFonts.poppins(
                    //         textStyle: TextStyle(
                    //           decoration: TextDecoration.none,
                    //           fontSize: 10,
                    //           fontWeight: FontWeight.w400,
                    //           color: Coloring.blk.withOpacity(0.4),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    //   trailing: Icon(
                    //     Icons.arrow_forward_ios_outlined,
                    //     color: Coloring.blk,
                    //     size: 20,
                    //   ),
                    // ),
                    Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 6, right: 6, bottom: 4, top: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Coloring.bg2.withOpacity(0.5),
                      ),
                      child: Image.asset(
                        'assets/shareIcon.png',
                        scale: 2.5,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Text(
                            "Don't know your Landlord details?",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Text(
                            "Share form with them with the quick and easy completion!",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk.withOpacity(0.4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Coloring.blk,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // party Type
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Party Type',
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
              // drop down field party Type
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 15),
                child: DropdownButtonFormField<String>(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry14,
                    ),
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  value: isSelectPartyType,
                  items: selectPartyType
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      isSelectPartyType = newValue!;
                    });
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
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
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Select Party Type',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
                    )),
                  ),
                ),
              ),
              // Full Name
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Full Name',
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
              // text field Full Name
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 15),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk11,
                  )),
                  // onChanged: (value) {
                  //   setState(() {
                  //     propertyDetails[index].validator =
                  //         value.isNotEmpty;
                  //   });
                  // },
                  decoration: InputDecoration(
                    hintText: 'Enter Full Name',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
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
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null; // Return null here instead of returning a string message
                    }
                    return null;
                  },
                ),
              ),
              // Age
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Age',
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
              // text field Age
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 15),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk11,
                  )),
                  // onChanged: (value) {
                  //   setState(() {
                  //     propertyDetails[index].validator =
                  //         value.isNotEmpty;
                  //   });
                  // },
                  decoration: InputDecoration(
                    hintText: 'Enter Age',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
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
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null; // Return null here instead of returning a string message
                    }
                    return null;
                  },
                ),
              ),
              // Gender
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Gender',
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
              // drop down field Gender
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 15),
                child: DropdownButtonFormField<String>(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry14,
                    ),
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  value: isSelectGender,
                  items: selectGender
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      isSelectGender = newValue!;
                    });
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
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
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Select Gender',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
                    )),
                  ),
                ),
              ),
              // Phone
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Phone',
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
              // text field Phone Number
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 15),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk11,
                  )),
                  // onChanged: (value) {
                  //   setState(() {
                  //     propertyDetails[index].validator =
                  //         value.isNotEmpty;
                  //   });
                  // },
                  decoration: InputDecoration(
                    hintText: 'Enter Phone Number',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
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
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null; // Return null here instead of returning a string message
                    }
                    return null;
                  },
                ),
              ),
              // Permanent Address Full
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Permanent Address Full',
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
              // text field Full Address
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 15),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk11,
                  )),
                  // onChanged: (value) {
                  //   setState(() {
                  //     propertyDetails[index].validator =
                  //         value.isNotEmpty;
                  //   });
                  // },
                  decoration: InputDecoration(
                    hintText: 'Enter Full Address',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
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
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null; // Return null here instead of returning a string message
                    }
                    return null;
                  },
                ),
              ),
              // PAN Number
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'PAN Number',
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
              // text field PAN Number
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                ),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk11,
                  )),
                  // onChanged: (value) {
                  //   setState(() {
                  //     propertyDetails[index].validator =
                  //         value.isNotEmpty;
                  //   });
                  // },
                  decoration: InputDecoration(
                    hintText: 'PAN Number (ABCDE1234F)',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
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
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null; // Return null here instead of returning a string message
                    }
                    return null;
                  },
                ),
              ),
              // Add Aadhaar Number (Optional)
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
                      'Add Aadhaar Number (Optional) ',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      )),
                    ),
                  ],
                ),
              ),
              if (isCheckBox == true)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Aadhaar Number (12 Digits)
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Aadhaar Number (12 Digits)',
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
                    // text field Aadhaar Number
                    Container(
                      height: 40,
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 15),
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk11,
                        )),
                        // onChanged: (value) {
                        //   setState(() {
                        //     propertyDetails[index].validator =
                        //         value.isNotEmpty;
                        //   });
                        // },
                        decoration: InputDecoration(
                          hintText: 'Enter Aadhaar Number',
                          hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry11.withOpacity(0.8),
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
                          focusedErrorBorder: OutlineInputBorder(
                            gapPadding: 20,
                            borderSide: BorderSide(
                              color: Coloring.gry11.withOpacity(0.4),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return null; // Return null here instead of returning a string message
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              // Email Address
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Email Address',
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
              // text field Email Address
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 15),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk11,
                  )),
                  // onChanged: (value) {
                  //   setState(() {
                  //     propertyDetails[index].validator =
                  //         value.isNotEmpty;
                  //   });
                  // },
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
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
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null; // Return null here instead of returning a string message
                    }
                    return null;
                  },
                ),
              ),
              // Pin Code
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Pin Code',
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
              // text field Pin Code
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 15),
                child: TextFormField(
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk11,
                  )),
                  // onChanged: (value) {
                  //   setState(() {
                  //     propertyDetails[index].validator =
                  //         value.isNotEmpty;
                  //   });
                  // },
                  decoration: InputDecoration(
                    hintText: 'Pin Code',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry11.withOpacity(0.8),
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
                    focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null; // Return null here instead of returning a string message
                    }
                    return null;
                  },
                ),
              ),
              // add tenant
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 4, bottom: 4),
                decoration: BoxDecoration(
                    border: Border.all(color: Coloring.bg2),
                    borderRadius: BorderRadius.circular(10),
                    color: Coloring.bg2.withOpacity(0.4)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Add Tenant',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.bg2,
                        ),
                      ),
                    ),
                    const SizedBox(width: 3),
                    Icon(
                      Icons.add,
                      color: Coloring.bg2,
                    )
                  ],
                ),
              )
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const SummaryEStamp(), // Replace with your next screen
                  ),
                );
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
