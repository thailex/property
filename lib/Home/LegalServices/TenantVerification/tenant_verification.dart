import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/TenantVerification/tenant_details.dart';

class TenantVerification extends StatefulWidget {
  const TenantVerification({super.key});

  @override
  State<TenantVerification> createState() => _TenantVerificationState();
}

class _TenantVerificationState extends State<TenantVerification> {
  List<PackageBenefits> comprehensiveVerificationPackageBenefits = [
    PackageBenefits(
      verificationDetails:
          'Verification of Govt.ID-AADHAR,PAN,Driving License or Voter ID',
      verificationName: 'ID Verification',
    ),
    PackageBenefits(
      verificationDetails:
          'Verification of Govt.ID-AADHAR,PAN,Driving License or Voter ID',
      verificationName: 'ID Verification',
    ),
    PackageBenefits(
      verificationDetails:
          'Verification of Govt.ID-AADHAR,PAN,Driving License or Voter ID',
      verificationName: 'ID Verification',
    ),
  ];
  List<PackageBenefits> standardVerificationPackageBenefits = [
    PackageBenefits(
      verificationDetails:
          'Verification of Govt.ID-AADHAR,PAN,Driving License or Voter ID',
      verificationName: 'ID Verification',
    ),
    PackageBenefits(
      verificationDetails:
          'Check civil / criminal records to stay safe from frauds',
      verificationName: 'Civil and Criminal Check',
    ),
    PackageBenefits(
      verificationDetails:
          'Physical Verification of the permanent address provided',
      verificationName: 'Address Verification',
    ),
  ];
  List<PackageBenefits> basicVerificationPackageBenefits = [
    PackageBenefits(
      verificationDetails:
          'Verification of Govt.ID-AADHAR,PAN,Driving License or Voter ID',
      verificationName: 'ID Verification',
    ),
    PackageBenefits(
      verificationDetails:
          'Check civil / criminal records to stay safe from frauds',
      verificationName: 'Civil and Criminal Check',
    ),
  ];
  List<PackageBenefits> instantVerificationPackageBenefits = [
    PackageBenefits(
      verificationDetails:
          'Verification of Govt.ID-AADHAR,PAN,Driving License or Voter ID',
      verificationName: 'ID Verification',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coloring.wte,
        leading: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Coloring.bg2,
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
            'Tenant Verification',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Coloring.bg2,
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
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 15),
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 15, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Coloring.bg1,
                    Coloring.bg2,
                    Coloring.bg3,
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // call phone
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        margin: const EdgeInsets.only(
                            left: 10, top: 18, bottom: 5, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Coloring.wte,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.phone_in_talk_outlined,
                              color: Coloring.bg2,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '+91-8068536545',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Coloring.bg2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Hassle Free Tenant Verification
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hassle Free Tenant Verification',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Coloring.wte,
                        ),
                      ),
                    ),
                  ),
                  // rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 5, bottom: 5),
                        margin: const EdgeInsets.only(
                            left: 10, top: 5, bottom: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Coloring.wte,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.stars_rounded,
                              color: Coloring.bg2,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4.8 Rating 7866 Reviews',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Coloring.bg2,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // advertisement
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, bottom: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // cost effective
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Coloring.wte,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Text(
                                        'Cost effective',
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
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Text(
                                        'Lowest prices in the segment',
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
                                  ],
                                ),
                                SvgPicture.asset(
                                  Assets.costEffective,
                                  height: 100,
                                )
                              ],
                            ),
                          ),
                          // streamlined Process
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Coloring.wte,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Text(
                                        'Streamlined process',
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
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Text(
                                        'Get detailed info in 3 steps',
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
                                  ],
                                ),
                                SvgPicture.asset(
                                  Assets.streamlinedProcess,
                                  height: 100,
                                )
                              ],
                            ),
                          ),
                          // Accurate and Fast Execution
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Coloring.wte,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Text(
                                        'Accurate & Fast Execution',
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
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    SizedBox(
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                      child: Text(
                                        'On time execution & reliable information',
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
                                  ],
                                ),
                                SvgPicture.asset(
                                  Assets.fastExecution,
                                  height: 100,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // select package
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Select Package',
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
            // Comprehensive Verification
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 10, top: 15, bottom: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Coloring.blk.withOpacity(0.3),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 3,
                  )
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Comprehensive Verification
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Comprehensive Verification
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Comprehensive Verification',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk,
                              ),
                            ),
                          ),
                        ),
                        // select
                        Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Coloring.bg1,
                                Coloring.bg2,
                                Coloring.bg3,
                              ]),
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            'Select',
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // ₹899 per tenant
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      '₹899 per tenant',
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
                  const SizedBox(
                    height: 10,
                  ),
                  // ID Verification
                  ListView.builder(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: comprehensiveVerificationPackageBenefits.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          // ID Verification
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Coloring.gold,
                                size: 15,
                              ),
                              Text(
                                comprehensiveVerificationPackageBenefits[index]
                                    .verificationName,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // ID Verification details
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              comprehensiveVerificationPackageBenefits[index]
                                  .verificationDetails,
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
                          index ==
                                  comprehensiveVerificationPackageBenefits
                                          .length -
                                      1
                              ? const SizedBox(
                                  height: 30,
                                )
                              : Divider(
                                  height: 15,
                                  color: Coloring.blk.withOpacity(0.1),
                                )
                        ],
                      );
                    },
                  ),
                  // Get Verified reports in 5-7 days
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    alignment: Alignment.center,
                    color: Coloring.bg2.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.verified,
                          color: Coloring.bg2,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Get Verified reports in 5-7 days',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Coloring.bg2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Standard Verification
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 10, top: 15, bottom: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Coloring.blk.withOpacity(0.3),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 3,
                  )
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Standard Verification
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Comprehensive Verification
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Standard Verification',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk,
                              ),
                            ),
                          ),
                        ),
                        // select
                        Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Coloring.bg1,
                                Coloring.bg2,
                                Coloring.bg3,
                              ]),
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            'Select',
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // ₹599 per tenant
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      '₹599 per tenant',
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
                  const SizedBox(
                    height: 10,
                  ),
                  // ID Verification
                  ListView.builder(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: standardVerificationPackageBenefits.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          // ID Verification
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Coloring.gold,
                                size: 15,
                              ),
                              Text(
                                standardVerificationPackageBenefits[index]
                                    .verificationName,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // ID Verification details
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              standardVerificationPackageBenefits[index]
                                  .verificationDetails,
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
                          index ==
                                  comprehensiveVerificationPackageBenefits
                                          .length -
                                      1
                              ? const SizedBox(
                                  height: 30,
                                )
                              : Divider(
                                  height: 15,
                                  color: Coloring.blk.withOpacity(0.1),
                                )
                        ],
                      );
                    },
                  ),
                  // Get Verified reports in 5-7 days
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    alignment: Alignment.center,
                    color: Coloring.bg2.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.verified,
                          color: Coloring.bg2,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Get Verified reports in 5-7 days',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Coloring.bg2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Basic Verification
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 10, top: 15, bottom: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Coloring.blk.withOpacity(0.3),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 3,
                  )
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Basic Verification
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Comprehensive Verification
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Basic Verification',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk,
                              ),
                            ),
                          ),
                        ),
                        // select
                        Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Coloring.bg1,
                                Coloring.bg2,
                                Coloring.bg3,
                              ]),
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            'Select',
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // ₹249 per tenant
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      '₹249 per tenant',
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
                  const SizedBox(
                    height: 10,
                  ),
                  // ID Verification
                  ListView.builder(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: basicVerificationPackageBenefits.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          // ID Verification
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Coloring.gold,
                                size: 15,
                              ),
                              Text(
                                basicVerificationPackageBenefits[index]
                                    .verificationName,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // ID Verification details
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              basicVerificationPackageBenefits[index]
                                  .verificationDetails,
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
                          index == basicVerificationPackageBenefits.length - 1
                              ? const SizedBox(
                                  height: 30,
                                )
                              : Divider(
                                  height: 15,
                                  color: Coloring.blk.withOpacity(0.1),
                                )
                        ],
                      );
                    },
                  ),
                  // Get Verified reports in 5-7 days
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    alignment: Alignment.center,
                    color: Coloring.bg2.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.verified,
                          color: Coloring.bg2,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Get Verified reports in 1-2 days',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Coloring.bg2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Instant Verification
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 10, top: 15, bottom: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Coloring.blk.withOpacity(0.3),
                    blurStyle: BlurStyle.outer,
                    blurRadius: 3,
                  )
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Instant Verification
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Comprehensive Verification
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            'Instant Verification',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk,
                              ),
                            ),
                          ),
                        ),
                        // select
                        Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 8, bottom: 8),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Coloring.bg1,
                                Coloring.bg2,
                                Coloring.bg3,
                              ]),
                              borderRadius: BorderRadius.circular(4)),
                          child: Text(
                            'Select',
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // ₹99 per tenant
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Text(
                      '₹99 per tenant',
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
                  const SizedBox(
                    height: 10,
                  ),
                  // ID Verification
                  ListView.builder(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: instantVerificationPackageBenefits.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          // ID Verification
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Coloring.gold,
                                size: 15,
                              ),
                              Text(
                                instantVerificationPackageBenefits[index]
                                    .verificationName,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // ID Verification details
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              instantVerificationPackageBenefits[index]
                                  .verificationDetails,
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
                          index == instantVerificationPackageBenefits.length - 1
                              ? const SizedBox(
                                  height: 30,
                                )
                              : Divider(
                                  height: 15,
                                  color: Coloring.blk.withOpacity(0.1),
                                )
                        ],
                      );
                    },
                  ),
                  // Get Verified reports in 5-7 days
                  Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    alignment: Alignment.center,
                    color: Coloring.bg2.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.verified,
                          color: Coloring.bg2,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Get Verified reports in 1-2 days',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Coloring.bg2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TenantDetails(),
                ));
          },
          child: Container(
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
              'Get Started',
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
    );
  }
}

class PackageBenefits {
  String verificationName;
  String verificationDetails;
  PackageBenefits(
      {required this.verificationDetails, required this.verificationName});
}
