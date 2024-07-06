import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class SummaryAadhaarESign extends StatefulWidget {
  const SummaryAadhaarESign({super.key});

  @override
  State<SummaryAadhaarESign> createState() => _SummaryAadhaarESignState();
}

class _SummaryAadhaarESignState extends State<SummaryAadhaarESign> {
  List<AddressDetails> addressDetails = [
    AddressDetails(
        title: 'Full Name',
        textFieldHintText: 'Full Name',
        dropDown: ['Owner', 'Buyer', 'Customer', 'Tenant', 'Witness']),
    AddressDetails(title: 'Email', textFieldHintText: 'Email', dropDown: []),
    AddressDetails(title: 'Phone', textFieldHintText: 'Phone', dropDown: []),
    AddressDetails(
        title: 'Delivery Address',
        textFieldHintText: 'Delivery Address',
        dropDown: ['Male', 'Female']),
    AddressDetails(
        title: 'Pin Code', textFieldHintText: 'Pin Code', dropDown: []),
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
            'Summary',
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
            // Form completion detail
            Container(
              padding: const EdgeInsets.only(
                  right: 15, left: 15, top: 15, bottom: 15),
              margin: const EdgeInsets.only(
                  left: 15, right: 15, top: 20, bottom: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Coloring.otpSelectedBorderColor2,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FORM COMPLETION DETAIL',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SimpleCircularProgressBar(
                        size: 40,
                        progressColors: [Coloring.bg2],
                        progressStrokeWidth: 4,
                        backStrokeWidth: 1,
                        backColor: Colors.blueGrey,
                        animationDuration: 3,
                        onGetText: (double value) {
                          return Text(
                            textAlign: TextAlign.center,
                            '${value.toInt()}%',
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            )),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Form Completion',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'You are almost there',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk,
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
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Coloring.gry.withOpacity(0.2),
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 10,
                            right: MediaQuery.of(context).size.width / 10,
                            top: MediaQuery.of(context).size.width / 40,
                            bottom: MediaQuery.of(context).size.width / 40),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Coloring.bg2.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Coloring.bg2),
                        ),
                        child: Text(
                          'Preview',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Coloring.bg2,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 10,
                            right: MediaQuery.of(context).size.width / 10,
                            top: MediaQuery.of(context).size.width / 40,
                            bottom: MediaQuery.of(context).size.width / 40),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Coloring.bg2,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Complete Now',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Coloring.wte,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // Address details
            Container(
              padding:
                  const EdgeInsets.only(right: 0, left: 0, top: 15, bottom: 15),
              margin: const EdgeInsets.only(
                  left: 15, right: 15, top: 20, bottom: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Coloring.otpSelectedBorderColor2,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // address
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Text(
                      'Address',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Coloring.blk,
                        ),
                      ),
                    ),
                  ),
                  // add address
                  GestureDetector(
                    onTap: () {
                      addressBottomSheet();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 1.1,
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15, top: 15),
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Coloring.bg2, width: 1.5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'ADD ADDRESS',
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
                  ),
                  // Deliver Type
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Text('Delivery Type',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Coloring.blk,
                          ),
                        )),
                  ),
                  // Deliver Type
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Coloring.gry11.withOpacity(0.6)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 6,
                                child: Text(
                                  'Same Day Delivery',
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
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '₹ 499',
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
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Coloring.gry11.withOpacity(0.6)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 6,
                                child: Text(
                                  'Standard Delivery',
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
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '₹ 100',
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
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Coloring.gry11.withOpacity(0.6)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 6,
                                child: Text(
                                  'Next Day Delivery',
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
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                '₹ 299',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Payment Summary
            Container(
              padding:
                  const EdgeInsets.only(right: 0, left: 0, top: 15, bottom: 15),
              margin: const EdgeInsets.only(
                  left: 15, right: 15, top: 20, bottom: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Coloring.otpSelectedBorderColor2,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Payment Summary
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Text(
                      'Payment Summary',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Coloring.blk,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Divider(
                    height: 10,
                    color: Coloring.gry.withOpacity(0.2),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
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
                          '₹ 0',
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width / 1.1,
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          margin: const EdgeInsets.only(
            right: 10,
            left: 10,
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
            'Make Payment',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.wte,
              ),
            ),
          ),
        )
      ],
    );
  }

  // bottom sheet for address details
  addressBottomSheet() {
    return showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add Delivery Address',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Coloring.blk,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.clear,
                          color: Coloring.blk,
                        ),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  itemCount: addressDetails.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        // title of property details
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                addressDetails[index].title,
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
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              setState(() {
                                addressDetails[index].validator =
                                    value.isNotEmpty;
                              });
                            },
                            decoration: InputDecoration(
                              hintText: addressDetails[index].textFieldHintText,
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
                    );
                  },
                ),
              ],
            ),
          ),
          persistentFooterButtons: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.1,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              margin: const EdgeInsets.only(
                right: 10,
                left: 10,
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
            )
          ],
        );
      },
    );
  }
}

class AddressDetails {
  String title;
  String textFieldHintText;
  bool validator = false;
  String isSelectValue = '';
  List<String> dropDown;
  AddressDetails(
      {required this.title,
      required this.textFieldHintText,
      required this.dropDown});
}
