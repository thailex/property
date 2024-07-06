import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class EnquiryNow extends StatefulWidget {
  const EnquiryNow({super.key});
  @override
  State<EnquiryNow> createState() => _EnquiryNowState();
}

class _EnquiryNowState extends State<EnquiryNow> {
  bool isCheckBox = false;
  String? _selectedValue;
  List<EmailAgents> emailAgents = [
    EmailAgents(hintText: 'First name'),
    EmailAgents(hintText: 'Last name'),
    EmailAgents(hintText: 'Phone'),
    EmailAgents(hintText: 'Email Id'),
    EmailAgents(hintText: 'Country'),
    EmailAgents(hintText: 'Postcode'),
    EmailAgents(hintText: 'Message(Optional)'),
  ];
  final List<String> country = [
    'India',
    'America',
    'England',
    'England',
    'England',
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
            'Enquiry',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // propertyImage and details
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  Assets.propertyDetails,
                  fit: BoxFit.fill,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Coloring.blk20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '£1,345 pcm',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Coloring.wte,
                        )),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: 65.5,
                        child: Text(
                          'Church Lane ,pannal',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Coloring.wte,
                          )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // text field form for email agents
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: emailAgents.length,
              itemBuilder: (context, index) {
                return (index == 4)
                    // dropdown field for country for email agent
                    ? Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 15),
                        height: 40,
                        margin: const EdgeInsets.only(
                            left: 40, right: 40, bottom: 15),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Coloring.wte.withOpacity(0.7)),
                            boxShadow: [
                              BoxShadow(
                                color: Coloring.otpSelectedBorderColor2,
                                offset: const Offset(3, 3),
                                blurRadius: 4,
                                blurStyle: BlurStyle.outer,
                              )
                            ]),
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
                            color: Coloring.blk23.withOpacity(0.8),
                          ),
                          value: _selectedValue,
                          items: country
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedValue = newValue;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.only(right: 15, bottom: 10),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            floatingLabelAlignment:
                                FloatingLabelAlignment.start,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            hintText: 'Country',
                            hintStyle: GoogleFonts.poppins(
                              textStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk23.withOpacity(0.8),
                              )),
                            ),
                          ),
                        ),
                      )
                    // text field for email agent
                    : Container(
                        height: (index == emailAgents.length - 1) ? 60 : 40,
                        margin: const EdgeInsets.only(
                            left: 40, right: 40, bottom: 15),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Coloring.wte.withOpacity(0.7)),
                            boxShadow: [
                              BoxShadow(
                                color: Coloring.otpSelectedBorderColor2,
                                offset: const Offset(3, 3),
                                blurRadius: 4,
                                blurStyle: BlurStyle.outer,
                              )
                            ]),
                        child: TextFormField(
                          maxLines: (index == emailAgents.length - 1) ? 6 : 1,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk11,
                          )),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: emailAgents[index].hintText,
                            hintStyle: GoogleFonts.poppins(
                              textStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk23.withOpacity(0.8),
                              )),
                            ),
                            contentPadding: (index == emailAgents.length - 1)
                                ? const EdgeInsets.only(
                                    left: 15, right: 15, top: 5)
                                : const EdgeInsets.only(
                                    left: 15, right: 15, bottom: 8),
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
                      );
              },
            ),
            // 0/800 characters
            Padding(
              padding: const EdgeInsets.only(left: 40, bottom: 20),
              child: Text(
                '0/800 characters',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk12,
                )),
              ),
            ),
            // We will only send thesev details to PROVENTIAL Estate Agents.
            Center(
              child: SizedBox(
                width: 260,
                child: Column(
                  children: [
                    Text(
                      'We will only send these details to proverbial Estate Agents.',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk,
                      )),
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'By sending the form you agree to our ',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Coloring.blk,
                            )),
                            children: [
                          TextSpan(
                            text: 'terms of use and our privacy policy',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Coloring.gradient2,
                            )),
                          ),
                        ])),
                  ],
                ),
              ),
            ),
            // terms and conditions
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
              ),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 0.6,
                    child: Checkbox(
                      visualDensity: const VisualDensity(horizontal: -3.8),
                      value: isCheckBox,
                      onChanged: (value) {
                        setState(() {
                          isCheckBox = value!;
                        });
                      },
                      activeColor: Coloring.ble5,
                    ),
                  ),
                  Text(
                    'Save my details on this device for next time.',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk,
                    )),
                  ),
                ],
              ),
            ),
            // bottom button send email enquiry
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Coloring.wte,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Send Enquiry',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.wte,
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// to show text field form data
class EmailAgents {
  String hintText;
  EmailAgents({required this.hintText});
}
