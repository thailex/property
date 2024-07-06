import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class Faqs extends StatefulWidget {
  const Faqs({super.key});
  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  List<Faq> faqsAccount = [
    Faq(
        header: 'What the first step of the home buying process?',
        body:
            'Getting pre-approved for a mortgage is the first step of thehome buying process. Getting a pre-approval letter from a lender get the ball rolling in the right direction.'),
    Faq(
        header: 'What the first step of the home buying process?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
    Faq(
        header: 'What is a seller’s market?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
    Faq(
        header: 'How much do I need for a down payment?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
    Faq(
        header: 'What kind of credit score do I need to buy a home?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
  ];
  List<Faq> faqsSearchProperty = [
    Faq(
        header: 'How do i save a property?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
    Faq(
        header: 'What should do if want more information about a property? ',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
    Faq(
        header: 'How do i book a viewing?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
    Faq(
        header: 'Why aren’t properties removed once sold?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
  ];
  List<Faq> faqsAlerts = [
    Faq(
        header: 'How do i set up alerts for a search?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
    Faq(
        header: 'How do i stop receiving alerts for a saved search?',
        body:
            'PMS is a Property Management System that helps business streamline HR process and improve employee management'),
  ];
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
            'FAQs',
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
        // Faqs
        child: Column(
          children: [
            // Faqs for My Account
            Container(
              margin: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 10, top: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Coloring.otpSelectedBorderColor2,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Text(
                      'MY ACCOUNT',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk29,
                      )),
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    shrinkWrap: true,
                    itemCount: faqsAccount.length,
                    itemBuilder: (context, ind) {
                      return ExpansionPanelList(
                        expandedHeaderPadding: EdgeInsets.zero,
                        materialGapSize: 0,
                        elevation: 0,
                        dividerColor: Colors.black,
                        expansionCallback: (int index, bool isExpanded) {
                          setState(() {
                            faqsAccount[ind].isExpanded =
                                !faqsAccount[ind].isExpanded;
                          });
                        },
                        animationDuration: const Duration(seconds: 1),
                        children: [
                          ExpansionPanel(
                              headerBuilder: (context, isExpanded) {
                                return Container(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  width: 120,
                                  child: Text(
                                    faqsAccount[ind].header,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.blk25,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              body: Container(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10, bottom: 10),
                                margin:
                                    const EdgeInsets.only(right: 80, left: 15),
                                decoration: BoxDecoration(
                                  color: Coloring.gry18,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  faqsAccount[ind].body,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk30,
                                  )),
                                ),
                              ),
                              isExpanded: faqsAccount[ind].isExpanded,
                              canTapOnHeader: true),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
            // Faqs for Searching for a property
            Container(
              margin: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 10, top: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Coloring.otpSelectedBorderColor2,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Text(
                      'SEARCHING FOR A PROPERTY',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk29,
                      )),
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    shrinkWrap: true,
                    itemCount: faqsSearchProperty.length,
                    itemBuilder: (context, ind) {
                      return ExpansionPanelList(
                        expandedHeaderPadding: EdgeInsets.zero,
                        materialGapSize: 0,
                        elevation: 0,
                        dividerColor: Colors.black,
                        expansionCallback: (int index, bool isExpanded) {
                          setState(() {
                            faqsSearchProperty[ind].isExpanded =
                                !faqsSearchProperty[ind].isExpanded;
                          });
                        },
                        animationDuration: const Duration(seconds: 1),
                        children: [
                          ExpansionPanel(
                              headerBuilder: (context, isExpanded) {
                                return Container(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  width: 120,
                                  child: Text(
                                    faqsSearchProperty[ind].header,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.blk25,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              body: Container(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10, bottom: 10),
                                margin:
                                    const EdgeInsets.only(right: 80, left: 15),
                                decoration: BoxDecoration(
                                  color: Coloring.gry18,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  faqsSearchProperty[ind].body,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk30,
                                  )),
                                ),
                              ),
                              isExpanded: faqsSearchProperty[ind].isExpanded,
                              canTapOnHeader: true),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
            // Faqs for Alerts
            Container(
              margin: const EdgeInsets.only(
                  left: 15, right: 15, bottom: 30, top: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Coloring.otpSelectedBorderColor2,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                )
              ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Text(
                      'ALERTS',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk29,
                      )),
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    shrinkWrap: true,
                    itemCount: faqsAlerts.length,
                    itemBuilder: (context, ind) {
                      return ExpansionPanelList(
                        expandedHeaderPadding: EdgeInsets.zero,
                        materialGapSize: 0,
                        elevation: 0,
                        dividerColor: Colors.black,
                        expansionCallback: (int index, bool isExpanded) {
                          setState(() {
                            faqsAlerts[ind].isExpanded =
                                !faqsAlerts[ind].isExpanded;
                          });
                        },
                        animationDuration: const Duration(seconds: 1),
                        children: [
                          ExpansionPanel(
                              headerBuilder: (context, isExpanded) {
                                return Container(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  width: 120,
                                  child: Text(
                                    faqsAlerts[ind].header,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.blk25,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              body: Container(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, right: 10, bottom: 10),
                                margin:
                                    const EdgeInsets.only(right: 80, left: 15),
                                decoration: BoxDecoration(
                                  color: Coloring.gry18,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  faqsAlerts[ind].body,
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk30,
                                  )),
                                ),
                              ),
                              isExpanded: faqsAlerts[ind].isExpanded,
                              canTapOnHeader: true),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// to show the list of faqs
class Faq {
  String header;
  String body;
  bool isExpanded = false;
  Faq({required this.header, required this.body});
}
