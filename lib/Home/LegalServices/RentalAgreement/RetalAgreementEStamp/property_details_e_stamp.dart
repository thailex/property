import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/RentalAgreementWithAadharE-Sign/landlord_details_aadhaar_e_sign.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/RetalAgreementEStamp/landlord%20detail.dart';

class PropertyDetailsEStamp extends StatefulWidget {
  const PropertyDetailsEStamp({super.key});

  @override
  State<PropertyDetailsEStamp> createState() => _PropertyDetailsEStampState();
}

class _PropertyDetailsEStampState extends State<PropertyDetailsEStamp> {
  bool isNonResidential = false;
  bool isResidential = false;
  bool isSave = false;
  String isSelectValueBedRooms = '';
  String isSelectValueBathRooms = '';
  String? isSelectPartyType;
  String? isSelectDistrict;
  String? isSelectTaluka;
  String? isSelectVillageOrCity;
  String? isSelectPropertyNumberType;
  String? isSelectParkingAreaUnit;
  String? isSelectGalleryAreaUnit;
  final List<String> selectPartyType = [
    'Owner',
    'Advocate',
    'Buyer',
    'Customer',
    'Tenant',
    'Witness'
  ];
  final List<String> selectDistrict = [
    'Chennai',
    'Madurai',
    'Salem',
  ];
  final List<String> selectTaluka = [
    'Chennai',
    'Madurai',
    'Salem',
  ];
  final List<String> selectVillageOrCity = [
    'Chennai',
    'Madurai',
    'Salem',
  ];
  final List<String> selectPropertyNumberType = [
    'House Number',
    'GAT Number',
    'Survey Number',
    'Plot Number',
    'C.T.S. Number',
  ];
  final List<String> selectParkingAreaUnit = [
    'Square Feet',
    'Hectare',
    'Square Meter',
  ];
  final List<String> selectGalleryAreaUnit = [
    'Square Feet',
    'Hectare',
    'Square Meter',
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
            'Property Details',
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
          children: [
            // party Type
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 18),
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
            // House Number
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'House Number',
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
            // text field House Number
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
                  hintText: 'Enter House Number',
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
            // Building Name
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Building Name',
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
            // text field Building Name
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
                  hintText: 'Enter Building Name',
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
            // Enter Locality
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Enter Locality',
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
            // text field Enter Locality
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
                  hintText: 'Enter Locality',
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
            // Number of Bedrooms
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Number of Bedrooms',
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
            // Number of Bedrooms
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                children: [
                  // Add buttons for 1, 2, 3, 4, 5
                  for (int i = 1; i <= 5; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelectValueBedRooms = '$i';
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: isSelectValueBedRooms == '$i'
                              ? Coloring.lgtGrn
                              : Coloring.lgtGrn,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '$i',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: isSelectValueBedRooms == '$i'
                                  ? Coloring.wte
                                  : Coloring.blk,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // Number of Bathrooms
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Number of Bathrooms',
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
            // Number of Bathrooms
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                children: [
                  // Add buttons for 1, 2, 3, 4, 5
                  for (int i = 1; i <= 5; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelectValueBathRooms = '$i';
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: isSelectValueBathRooms == '$i'
                              ? Coloring.lgtGrn
                              : Coloring.lgtGrn,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '$i',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: isSelectValueBathRooms == '$i'
                                  ? Coloring.wte
                                  : Coloring.blk,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // Road / Street
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Road / Street',
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
            // text field Road / Street
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
                  hintText: 'Road / Street',
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
            // District
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'District',
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
            // drop down field District
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
                value: isSelectDistrict,
                items: selectDistrict
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    isSelectDistrict = newValue!;
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
                  hintText: 'Select District',
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
            // Taluka
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Taluka',
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
            // drop down field Taluka
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
                value: isSelectTaluka,
                items:
                    selectTaluka.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    isSelectTaluka = newValue!;
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
                  hintText: 'Select Taluka',
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
            // Village / City
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Village / City',
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
            // drop down field Village / City
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
                value: isSelectVillageOrCity,
                items: selectVillageOrCity
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    isSelectVillageOrCity = newValue!;
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
                  hintText: 'Select Village / City',
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
            // Property Number Type
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Property Number Type',
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
            // drop down field Property Number Type
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
                value: isSelectPropertyNumberType,
                items: selectPropertyNumberType
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    isSelectPropertyNumberType = newValue!;
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
                  hintText: 'Property Number Type',
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
            // Flat / HouseBuilt - up Area
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Flat / HouseBuilt - up Area',
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
            // text field Flat / HouseBuilt - up Area
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
                  hintText: 'Flat / HouseBuilt - up Area',
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
            //Built - up Area
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Built - up Area',
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
            // text field Built - up Area
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
                  hintText: 'Built - up Area',
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
            // Use
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Use',
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
            // select non -residential or residential
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
              padding:
                  const EdgeInsets.only(left: 5, right: 10, top: 5, bottom: 15),
              child: Row(
                children: [
                  // Non Residential
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isNonResidential = !isNonResidential;
                        isResidential = false;
                      });
                    },
                    child: Row(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                border: Border.all(color: Coloring.lgtGrn)),
                            child: (isNonResidential)
                                ? Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Coloring.lgtGrn,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  )
                                : Container()),
                        const SizedBox(width: 5),
                        Text(
                          'Non Residential',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk,
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                  // Residential
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isNonResidential = false;
                        isResidential = !isResidential;
                      });
                    },
                    child: Row(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Coloring.lgtGrn)),
                            child: (isResidential)
                                ? Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Coloring.lgtGrn,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  )
                                : Container()),
                        const SizedBox(width: 5),
                        Text(
                          'Residential',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk,
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Parking Area
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Parking Area',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Parking Area
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
                  hintText: 'Parking Area',
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
            // Parking Area Unit
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Parking Area Unit',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // drop down Parking Area Unit
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
                value: isSelectParkingAreaUnit,
                items: selectParkingAreaUnit
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    isSelectParkingAreaUnit = newValue!;
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
                  hintText: 'Select Parking Area Unit',
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
            // Gallery Area
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Gallery Area',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Gallery Area
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
                  hintText: 'Gallery Area',
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
            // Gallery Area Unit
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Row(
                children: [
                  Text(
                    'Gallery Area Unit',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // drop down Gallery Area Unit
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
                value: isSelectGalleryAreaUnit,
                items: selectGalleryAreaUnit
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    isSelectGalleryAreaUnit = newValue!;
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
                  hintText: 'Select Gallery Area Unit',
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
          ],
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
                        const LandlordDetailsAadhaarESign(), // Replace with your next screen
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
