import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

import '../Payment/pay.dart';

class RequestEvaluation extends StatefulWidget {
  const RequestEvaluation({super.key});

  @override
  State<RequestEvaluation> createState() => _RequestEvaluationState();
}

class _RequestEvaluationState extends State<RequestEvaluation> {
  List<LocalAgents> localAgents = [
    LocalAgents(
        subtitle: '28 Lower Bridge Street,Chester,CH11RS',
        title: 'Swetenhams',
        image: Assets.propertyValuation1),
    LocalAgents(
        subtitle: '28 Lower Bridge Street,Chester,CH11RS',
        title: 'Swetenhams',
        image: Assets.propertyValuation1),
    LocalAgents(
        subtitle: '28 Lower Bridge Street,Chester,CH11RS',
        title: 'Swetenhams',
        image: Assets.propertyValuation1),
    LocalAgents(
        subtitle: '28 Lower Bridge Street,Chester,CH11RS',
        title: 'Swetenhams',
        image: Assets.propertyValuation1),
    LocalAgents(
        subtitle: '28 Lower Bridge Street,Chester,CH11RS',
        title: 'Swetenhams',
        image: Assets.propertyValuation1),
    LocalAgents(
        subtitle: '28 Lower Bridge Street,Chester,CH11RS',
        title: 'Swetenhams',
        image: Assets.propertyValuation1),
  ];
  List<Details> details = [
    Details(name: 'First name'),
    Details(name: 'Last name'),
    Details(name: 'Email'),
    Details(name: 'Phone'),
    Details(name: 'Post code'),
    Details(name: 'Address'),
  ];
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Coloring.bg1,
          Coloring.bg2,
          Coloring.bg3,
        ])),
        child: Column(
          children: [
            // Property Valuation
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      'Property Valuation',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Coloring.wte,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            // Zip Image
            Image.asset(Assets.propertyValuation),
            const SizedBox(
              height: 30,
            ),
            // body for postcode,choose from LocalAgents,enter details for request valuation
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35),
                    ),
                    color: Coloring.wte),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      // Linear progress bar
                      Container(
                        margin: const EdgeInsets.only(left: 30, right: 30),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: LinearProgressBar(
                            maxSteps: 3,
                            progressType: LinearProgressBar
                                .progressTypeLinear, // Use Linear progress
                            currentStep: currentStep + 1,
                            progressColor: Coloring.ble16,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                      ),
                      if (currentStep == 0)
                        getPostCode()
                      else if (currentStep == 1)
                        chooseFromLocalAgents()
                      else if (currentStep == 2)
                        enterDetails()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Post code
  getPostCode() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30),
          child: Text(
            'Enter your postcode to get started',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Coloring.blk,
            )),
          ),
        ),
        // Find out the current value of your home with a free,no-obligation appraisal from experts in your area.
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 10),
          child: SizedBox(
            width: 250,
            child: Text(
              'Find out the current value of your home with a free,no-obligation appraisal from experts in your area.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Coloring.gry23,
              )),
            ),
          ),
        ),
        // text field for post code
        Container(
          margin:
              const EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 25),
          child: TextFormField(
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Coloring.blk11,
            )),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Text(
                  'Postcode',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.ble17,
                  )),
                ),
              ),
              contentPadding:
                  const EdgeInsets.only(right: 15, top: 0, bottom: 0),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloring.gry11.withOpacity(0.4),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloring.gry11.withOpacity(0.4),
                ),
              ),
              enabledBorder: UnderlineInputBorder(
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
        // bottom button for Continue
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentStep = 1;
              });
            },
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(
                  top: 20, bottom: 30, left: 30, right: 30),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.ble13,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Continue',
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
        ),
      ],
    );
  }

  //choose from LocalAgents
  chooseFromLocalAgents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            top: 10,
          ),
          child: Text(
            'Choose from local agents',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Coloring.blk,
            )),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: localAgents.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
              padding: const EdgeInsets.only(
                  left: 15, top: 10, right: 15, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Coloring.wte,
                  boxShadow: [
                    BoxShadow(
                        color: Coloring.rd2,
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                        offset: const Offset(0, 4))
                  ]),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(localAgents[index].image),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localAgents[index].title,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk32,
                      )),
                    ),
                    Text(
                      localAgents[index].subtitle,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk16,
                      )),
                    ),
                  ],
                ),
                trailing: Transform.scale(
                  scale: 0.7,
                  child: Checkbox(
                    visualDensity: const VisualDensity(horizontal: -3.8),
                    value: localAgents[index].isCheck,
                    onChanged: (value) {
                      setState(() {
                        localAgents[index].isCheck = value!;
                      });
                    },
                    activeColor: Coloring.ble5,
                  ),
                ),
              ),
            );
          },
        ),
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentStep = 2;
              });
            },
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(
                  top: 20, bottom: 30, left: 30, right: 30),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.ble13,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Continue',
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
        ),
      ],
    );
  }

  // enter details
  enterDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Enter your details
        Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            top: 10,
          ),
          child: Text(
            'Enter your details',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Coloring.blk,
            )),
          ),
        ),
        // message
        Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            top: 30,
          ),
          child: Text(
            'Message',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Coloring.blk,
            )),
          ),
        ),
        // Hi I’d like a valuation of my property.
        Padding(
          padding:
              const EdgeInsets.only(left: 30.0, top: 15, right: 30, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hi I’d like a valuation of my property.',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk,
                )),
              ),
              Container(
                alignment: Alignment.center,
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    border: Border.all(color: Coloring.gry24),
                    color: Coloring.gry24.withOpacity(0.4)),
                child: Icon(
                  Icons.clear,
                  color: Coloring.gry24,
                  size: 10,
                ),
              )
            ],
          ),
        ),
        // text field for details
        ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: details.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 3),
              child: TextFormField(
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk11,
                )),
                keyboardType: (index == 0)
                    ? TextInputType.name
                    : (index == 1)
                        ? TextInputType.name
                        : (index == 2)
                            ? TextInputType.emailAddress
                            : (index == 5)
                                ? TextInputType.streetAddress
                                : TextInputType.number,
                decoration: InputDecoration(
                  labelText: details[index].name,
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                  contentPadding:
                      const EdgeInsets.only(right: 15, top: 0, bottom: 0),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Coloring.gry11.withOpacity(0.4),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
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
            );
          },
        ),
        // bottom button for request valuation
        Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Container(
              height: 40,
              margin: const EdgeInsets.only(
                  top: 40, bottom: 0, left: 30, right: 30),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.ble13,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Request Valuation',
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
        ),
        // privacy policy
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 50),
          child: RichText(
              text: TextSpan(
                  text:
                      'Please note that Real Esatate will send the above details to the agents you have selected only.By Submitting this form,you confirm that you agree to our mobile app ',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk25,
                  )),
                  children: [
                TextSpan(
                  text: 'terms of use ',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gradient2,
                  )),
                ),
                TextSpan(
                  text: 'and our mobile app ',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk25,
                  )),
                ),
                TextSpan(
                  text: 'privacy policy',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gradient2,
                  )),
                ),
              ])),
        ),
      ],
    );
  }
}

// to show local agents data
class LocalAgents {
  String title;
  String image;
  String subtitle;
  bool isCheck = false;

  LocalAgents(
      {required this.subtitle, required this.title, required this.image});
}

// to show details data
class Details {
  String name;
  Details({required this.name});
}
