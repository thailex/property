import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/RentalAgreementUploadDraft/upload_draft_contarct_details.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/RentalAgreementWithAadharE-Sign/contract_details_adhaar_e_sign.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/RetalAgreementEStamp/contract_details_e_stamp.dart';

class RentAgreement extends StatefulWidget {
  const RentAgreement({super.key});

  @override
  State<RentAgreement> createState() => _RentAgreementState();
}

class _RentAgreementState extends State<RentAgreement> {
  List<SelectRentAgreement> selectRentAgreement = [
    SelectRentAgreement(
        offer: 'Upto \$10 offer',
        rentalAgreementTitle: 'Rental Agreement with Biometric',
        image: 'assets/biometric.jpg'),
    SelectRentAgreement(
        offer: 'Upto \$5 offer',
        rentalAgreementTitle: 'Paperless Rental Agreement with Aadhaar E-Sign',
        image: 'assets/draftFile.jpg'),
    SelectRentAgreement(
        offer: 'Upto \$20 offer',
        rentalAgreementTitle: 'Rental Agreement with E-Stamp and Notary',
        image: 'assets/e_stamp.jpg'),
    SelectRentAgreement(
        offer: 'Upto \$15 offer',
        rentalAgreementTitle: 'Rental Agreement with Upload Draft',
        image: 'assets/uploadDraft.jpg'),
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
            'Rent Agreement',
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
            // // heading
            // Container(
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //         Coloring.bg1,
            //         Coloring.bg2,
            //         Coloring.bg3,
            //       ]),
            //       borderRadius: const BorderRadius.only(
            //           bottomLeft: Radius.circular(35),
            //           bottomRight: Radius.circular(35))),
            //   child: Column(
            //     children: [
            //       // online rental agreement,lease agreement heading
            //       Padding(
            //         padding: const EdgeInsets.only(
            //             top: 60.0, bottom: 5, left: 15, right: 30),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Online Rent Agreement,',
            //                   style: GoogleFonts.poppins(
            //                       textStyle: TextStyle(
            //                     decoration: TextDecoration.none,
            //                     fontSize: 18,
            //                     fontWeight: FontWeight.w600,
            //                     color: Coloring.wte,
            //                   )),
            //                 ),
            //                 const SizedBox(
            //                   height: 3,
            //                 ),
            //                 Text(
            //                   'Lease Agreement',
            //                   style: GoogleFonts.poppins(
            //                       textStyle: TextStyle(
            //                     decoration: TextDecoration.none,
            //                     fontSize: 18,
            //                     fontWeight: FontWeight.w600,
            //                     color: Coloring.wte,
            //                   )),
            //                 ),
            //               ],
            //             ),
            //             SvgPicture.asset(
            //               'assets/rentAgreementSign.svg',
            //               height: 80,
            //             )
            //           ],
            //         ),
            //       ),
            //       // available cities
            //       Padding(
            //         padding:
            //             const EdgeInsets.only(bottom: 25, left: 15, right: 40),
            //         child: Row(
            //           children: [
            //             Text(
            //               'Now available in 150+ cities in England',
            //               style: GoogleFonts.poppins(
            //                   textStyle: TextStyle(
            //                 decoration: TextDecoration.none,
            //                 fontSize: 10,
            //                 fontWeight: FontWeight.w600,
            //                 color: Coloring.wte.withOpacity(0.4),
            //               )),
            //             ),
            //           ],
            //         ),
            //       ),
            //       // same day delivery
            //       Padding(
            //         padding: const EdgeInsets.only(left: 15.0, bottom: 5),
            //         child: Row(
            //           children: [
            //             Icon(
            //               Icons.delivery_dining_outlined,
            //               color: Coloring.gold.withOpacity(0.8),
            //             ),
            //             const SizedBox(
            //               width: 10,
            //             ),
            //             Text(
            //               'Same day delivery',
            //               style: GoogleFonts.poppins(
            //                   textStyle: TextStyle(
            //                 decoration: TextDecoration.none,
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w600,
            //                 color: Coloring.wte,
            //               )),
            //             ),
            //           ],
            //         ),
            //       ),
            //       // Legally Valid Agreement
            //       Padding(
            //         padding: const EdgeInsets.only(left: 15.0, bottom: 5),
            //         child: Row(
            //           children: [
            //             Icon(
            //               Icons.privacy_tip_outlined,
            //               color: Coloring.gold.withOpacity(0.8),
            //             ),
            //             const SizedBox(
            //               width: 10,
            //             ),
            //             Text(
            //               'Legally Valid Agreement',
            //               style: GoogleFonts.poppins(
            //                   textStyle: TextStyle(
            //                 decoration: TextDecoration.none,
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w600,
            //                 color: Coloring.wte,
            //               )),
            //             ),
            //           ],
            //         ),
            //       ),
            //       // Share from your tenant/Owner
            //       Padding(
            //         padding: const EdgeInsets.only(left: 15.0, bottom: 10),
            //         child: Row(
            //           children: [
            //             Image.asset(
            //               'assets/shareIcon.png',
            //               scale: 2.1,
            //               color: Coloring.gold,
            //             ),
            //             const SizedBox(
            //               width: 10,
            //             ),
            //             Text(
            //               'Share from your tenant/Owner',
            //               style: GoogleFonts.poppins(
            //                   textStyle: TextStyle(
            //                 decoration: TextDecoration.none,
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w600,
            //                 color: Coloring.wte,
            //               )),
            //             ),
            //           ],
            //         ),
            //       ),
            //       // renew your agreement
            //       Container(
            //           padding: const EdgeInsets.all(8),
            //           margin: const EdgeInsets.only(
            //               left: 15, right: 15, top: 15, bottom: 30),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(15),
            //               color: Coloring.wte.withOpacity(0.1)),
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Row(
            //                 children: [
            //                   Icon(
            //                     Icons.autorenew_outlined,
            //                     size: 40,
            //                     color: Coloring.grn,
            //                   ),
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       Row(
            //                         children: [
            //                           Text(
            //                             'Renew your Agreement',
            //                             style: GoogleFonts.poppins(
            //                                 textStyle: TextStyle(
            //                               decoration: TextDecoration.none,
            //                               fontSize: 12,
            //                               fontWeight: FontWeight.w600,
            //                               color: Coloring.wte,
            //                             )),
            //                           ),
            //                           const SizedBox(
            //                             width: 5,
            //                           ),
            //                           Container(
            //                             height: 5,
            //                             width: 5,
            //                             decoration: BoxDecoration(
            //                                 borderRadius:
            //                                     BorderRadius.circular(50),
            //                                 color: Coloring.rd),
            //                           )
            //                         ],
            //                       ),
            //                       Text(
            //                         'Renew your existing Agreement',
            //                         style: GoogleFonts.poppins(
            //                             textStyle: TextStyle(
            //                           decoration: TextDecoration.none,
            //                           fontSize: 10,
            //                           fontWeight: FontWeight.w600,
            //                           color: Coloring.wte.withOpacity(0.5),
            //                         )),
            //                       ),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //               Icon(
            //                 Icons.arrow_forward_ios_outlined,
            //                 color: Coloring.wte,
            //               ),
            //             ],
            //           )),
            //     ],
            //   ),
            // ),
            // SELECT A RENT AGREEMENT
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, bottom: 5, left: 15, right: 20),
              child: Row(
                children: [
                  Text(
                    'SELECT A RENT AGREEMENT',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk.withOpacity(0.6),
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Divider(
                          color: Coloring.blk.withOpacity(0.6), thickness: 0.5))
                ],
              ),
            ),
            // SELECT A RENT AGREEMENT
            GridView.builder(
              padding: const EdgeInsets.only(left: 10, right: 10),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: MediaQuery.of(context).size.height / 4.25),
              itemCount: 4,
              itemBuilder: (context, index) {
                // SELECT A RENT AGREEMENT with Biometric
                return GestureDetector(
                  onTap: () {
                    (index == 3)
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StampContract(),
                            ))
                        : (index == 1)
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AadhaarESignContract(),
                                ))
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const UploadDraftContractDetails(),
                                ));
                  },
                  child: Container(
                    alignment: Alignment.topRight,
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    margin: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Coloring.otpSelectedBorderColor2,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage(selectRentAgreement[index].image),
                          fit: BoxFit.fill,
                          opacity: 0.4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // heading
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                            child: Text(
                              selectRentAgreement[index].rentalAgreementTitle,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Coloring.blk,
                              )),
                            ),
                          ),
                        ),
                        // offer
                        Container(
                            padding: const EdgeInsets.only(
                                left: 5, right: 10, top: 4, bottom: 4),
                            decoration: BoxDecoration(color: Coloring.wte),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.local_offer_rounded,
                                      color: Coloring.grn1,
                                      size: 15,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      selectRentAgreement[index].offer,
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Coloring.blk,
                                      )),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Coloring.blk,
                                  size: 15,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Available Add ons',
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
          ],
        ),
      ),
    );
  }
}

class SelectRentAgreement {
  String rentalAgreementTitle;
  String offer;
  String image;
  SelectRentAgreement(
      {required this.offer,
      required this.rentalAgreementTitle,
      required this.image});
}
