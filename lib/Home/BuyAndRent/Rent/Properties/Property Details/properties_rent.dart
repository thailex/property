import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Rent/Properties/Property%20Details/property_details_rent.dart';
import '../../../../../../../Colors/colors.dart';

class PropertiesRent extends StatefulWidget {
  const PropertiesRent({super.key});

  @override
  State<PropertiesRent> createState() => _PropertiesRentState();
}

class _PropertiesRentState extends State<PropertiesRent> {
  final List<String> filterProperty = [
    'Highest Price',
    'Lowest Price',
    'Average Price'
  ];
  String? selectedValue;
  List<Property> property = [
    Property(
      contactedPeople: '2 people contacted yesterday',
      pricesFrom: '\$679,000',
      propertyStatus: 'Featured Property',
      propertyType: '4 Bed Detached',
      image: [
        Assets.propertyImage,
        Assets.propertyImage,
        Assets.propertyImage,
      ],
      address: 'Kingsley Road,Harrogate,HG1',
      count: '4 RF',
      activePage: 0,
    ),
    Property(
      contactedPeople: '3 people contacted yesterday',
      pricesFrom: '\$779,000',
      propertyStatus: 'Featured Property',
      propertyType: '4 Bed Detached',
      image: [
        Assets.propertyImage,
        Assets.propertyImage,
        Assets.propertyImage,
      ],
      address: 'Kingsley Road,Harrogate,HG1',
      count: '2 AN',
      activePage: 0,
    ),
    Property(
      contactedPeople: '4 people contacted yesterday',
      pricesFrom: '\$879,000',
      propertyStatus: 'Featured Property',
      propertyType: '4 Bed Detached',
      image: [
        Assets.propertyImage,
        Assets.propertyImage,
        Assets.propertyImage,
      ],
      address: 'Kingsley Road,Harrogate,HG1',
      count: '2 AN',
      activePage: 0,
    ),
  ];
  // void _sortProperties() {
  //   if (selectedValue == 'Highest Price') {
  //     property.sort((a, b) =>
  //         int.parse(b.pricesFrom.replaceAll(RegExp(r'\D'), '')).compareTo(
  //             int.parse(a.pricesFrom.replaceAll(RegExp(r'\D'), ''))));
  //   } else if (selectedValue == 'Lowest Price') {
  //     property.sort((a, b) =>
  //         int.parse(a.pricesFrom.replaceAll(RegExp(r'\D'), '')).compareTo(
  //             int.parse(b.pricesFrom.replaceAll(RegExp(r'\D'), ''))));
  //   } else if (selectedValue == 'Average Price') {
  //     // Implement logic for average price if needed
  //   }
  // }
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
            'Harrogate,North Yorks...',
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: SvgPicture.asset('assets/locationIcon.svg'),
          ),
        ],
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Filter property price
            Container(
              padding:
                  const EdgeInsets.only(left: 30, right: 20, top: 1, bottom: 1),
              color: Coloring.wte10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '24 results',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk,
                      ),
                    ),
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Coloring.wte,
                        ),
                      ),
                      isExpanded: true,
                      hint: Text(
                        'Filter Price',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk,
                          ),
                        ),
                      ),
                      items: filterProperty
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Coloring.blk,
                                    ),
                                  ),
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
                        height: 30,
                        width: 90,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //property details
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: property.length,
              itemBuilder: (context, index) {
                return propertyDetails(index);
              },
            ),
          ],
        ),
      ),
    );
  }

  // indicator true for page scroll
  Widget _indicatorTrue() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: 18,
      margin: const EdgeInsets.only(right: 8, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: Coloring.wte9,
      ),
    );
  }

  // indicator false for page scroll
  Widget _indicatorFalse() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: 6,
      margin: const EdgeInsets.only(right: 8, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: Coloring.wte9,
      ),
    );
  }

  //Indicator Builder for page scroll
  List<Widget> _buildIndicator(int activePage, int totalPages) {
    final indicators = <Widget>[];

    for (var i = 0; i < totalPages; i++) {
      if (activePage == i) {
        indicators.add(_indicatorTrue());
      } else {
        indicators.add(_indicatorFalse());
      }
    }
    return indicators;
  }

  // to show property details
  Widget propertyDetails(int propertyIndex) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Coloring.wte, boxShadow: [
        BoxShadow(
          color: Coloring.otpSelectedBorderColor2,
          blurRadius: 4,
          offset: const Offset(0, 4),
          blurStyle: BlurStyle.outer,
        ),
      ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // PageView builder for property details
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PropertyDetailsRent(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 150,
                  child: PageView.builder(
                    controller: PageController(
                        initialPage: property[propertyIndex].activePage),
                    itemCount: property.length,
                    onPageChanged: (value) {
                      setState(() {
                        property[propertyIndex].activePage = value;
                      });
                    },
                    itemBuilder: (context, pageIndex) {
                      return Stack(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    property[propertyIndex]
                                        .image[pageIndex]
                                        .toString(),
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, right: 5, left: 5),
                                    decoration: BoxDecoration(
                                      color: Coloring.wte9,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        // contact image
                                        SvgPicture.asset(
                                          Assets.propertyContactedDetailsLogo,
                                          height: 12,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        // contacted people info
                                        Text(
                                          property[propertyIndex]
                                              .contactedPeople,
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
                                  ),
                                  // property rate and Featured property
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // property rate
                                      Container(
                                        margin: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              200,
                                        ),
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            right: 5,
                                            left: 5),
                                        decoration: BoxDecoration(
                                          color: Coloring.ble8,
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(4)),
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(),
                                              child: Text(
                                                'From',
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Coloring.wte,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(),
                                              child: Text(
                                                property[propertyIndex]
                                                    .pricesFrom,
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: Coloring.wte,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Featured property
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              200,
                                        ),
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            right: 5,
                                            left: 5),
                                        decoration: BoxDecoration(
                                          color: Coloring.wte9,
                                          borderRadius: const BorderRadius.only(
                                              bottomRight: Radius.circular(4)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(),
                                          child: Text(
                                            property[propertyIndex]
                                                .propertyStatus,
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
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          // share and favorites
                          Positioned(
                            right: MediaQuery.of(context).size.width / 20,
                            top: MediaQuery.of(context).size.width / 20,
                            child: Row(
                              children: [
                                // share
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Coloring.wte9,
                                  child: Icon(
                                    Icons.share_outlined,
                                    color: Coloring.blk,
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                // favorites
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Coloring.wte9,
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Coloring.blk,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                      //   Stack(
                      //   children: [
                      //     Stack(
                      //       children: [
                      //         // Property Image
                      //         Stack(
                      //           alignment: Alignment.bottomCenter,
                      //           children: [
                      //             Image.asset(
                      //               property[propertyIndex]
                      //                   .image[pageIndex]
                      //                   .toString(),
                      //               fit: BoxFit.fill,
                      //             ),
                      //             // property rate and Featured property
                      //             Row(
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.spaceBetween,
                      //               children: [
                      //                 // property rate
                      //                 Container(
                      //                   margin: EdgeInsets.only(
                      //                     left: MediaQuery.of(context)
                      //                             .size
                      //                             .width /
                      //                         200,
                      //                   ),
                      //                   padding: const EdgeInsets.only(
                      //                       top: 5,
                      //                       bottom: 5,
                      //                       right: 5,
                      //                       left: 5),
                      //                   decoration: BoxDecoration(
                      //                     color: Coloring.ble8,
                      //                     borderRadius: const BorderRadius.only(
                      //                         bottomLeft: Radius.circular(4)),
                      //                   ),
                      //                   child: Row(
                      //                     children: [
                      //                       Padding(
                      //                         padding: const EdgeInsets.only(),
                      //                         child: Text(
                      //                           'From',
                      //                           style: GoogleFonts.poppins(
                      //                             textStyle: TextStyle(
                      //                               decoration:
                      //                                   TextDecoration.none,
                      //                               fontSize: 10,
                      //                               fontWeight: FontWeight.w400,
                      //                               color: Coloring.wte,
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       ),
                      //                       const SizedBox(
                      //                         width: 8,
                      //                       ),
                      //                       Padding(
                      //                         padding: const EdgeInsets.only(),
                      //                         child: Text(
                      //                           property[propertyIndex]
                      //                               .pricesFrom,
                      //                           style: GoogleFonts.poppins(
                      //                             textStyle: TextStyle(
                      //                               decoration:
                      //                                   TextDecoration.none,
                      //                               fontSize: 10,
                      //                               fontWeight: FontWeight.w400,
                      //                               color: Coloring.wte,
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       ),
                      //                     ],
                      //                   ),
                      //                 ),
                      //                 // Featured property
                      //                 Container(
                      //                   margin: EdgeInsets.only(
                      //                     right: MediaQuery.of(context)
                      //                             .size
                      //                             .width /
                      //                         200,
                      //                   ),
                      //                   padding: const EdgeInsets.only(
                      //                       top: 5,
                      //                       bottom: 5,
                      //                       right: 5,
                      //                       left: 5),
                      //                   decoration: BoxDecoration(
                      //                     color: Coloring.wte9,
                      //                     borderRadius: const BorderRadius.only(
                      //                         bottomRight: Radius.circular(4)),
                      //                   ),
                      //                   child: Padding(
                      //                     padding: const EdgeInsets.only(),
                      //                     child: Text(
                      //                       property[propertyIndex]
                      //                           .propertyStatus,
                      //                       style: GoogleFonts.poppins(
                      //                         textStyle: TextStyle(
                      //                           decoration: TextDecoration.none,
                      //                           fontSize: 10,
                      //                           fontWeight: FontWeight.w400,
                      //                           color: Coloring.blk,
                      //                         ),
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ],
                      //         ),
                      //         // share and favorites
                      //         Positioned(
                      //           right: MediaQuery.of(context).size.width / 20,
                      //           top: MediaQuery.of(context).size.width / 20,
                      //           child: Row(
                      //             children: [
                      //               // share
                      //               CircleAvatar(
                      //                 radius: 15,
                      //                 backgroundColor: Coloring.wte9,
                      //                 child: Icon(
                      //                   Icons.share_outlined,
                      //                   color: Coloring.blk,
                      //                   size: 15,
                      //                 ),
                      //               ),
                      //               const SizedBox(
                      //                 width: 5,
                      //               ),
                      //               // favorites
                      //               CircleAvatar(
                      //                 radius: 15,
                      //                 backgroundColor: Coloring.wte9,
                      //                 child: Icon(
                      //                   Icons.favorite_border,
                      //                   color: Coloring.blk,
                      //                   size: 15,
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     // contacted people
                      //     Positioned(
                      //       left: MediaQuery.of(context).size.width / 350,
                      //       child: Container(
                      //         padding: const EdgeInsets.only(
                      //             top: 5, bottom: 5, right: 5, left: 5),
                      //         decoration: BoxDecoration(
                      //           color: Coloring.wte9,
                      //           borderRadius: const BorderRadius.only(
                      //               bottomLeft: Radius.circular(25),
                      //               bottomRight: Radius.circular(25),
                      //               topRight: Radius.circular(25)),
                      //         ),
                      //         child: Row(
                      //           children: [
                      //             // contact image
                      //             SvgPicture.asset(
                      //               Assets.propertyContactedDetailsLogo,
                      //               height: 12,
                      //             ),
                      //             const SizedBox(
                      //               width: 8,
                      //             ),
                      //             // contacted people info
                      //             Text(
                      //               property[propertyIndex].contactedPeople,
                      //               style: GoogleFonts.poppins(
                      //                 textStyle: TextStyle(
                      //                   decoration: TextDecoration.none,
                      //                   fontSize: 10,
                      //                   fontWeight: FontWeight.w400,
                      //                   color: Coloring.blk,
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // );
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIndicator(
                    property[propertyIndex].activePage,
                    property.length,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // bottom view property details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // property images
                  Row(
                    children: [
                      Image.asset(Assets.subPropertyImage),
                      const SizedBox(width: 5),
                      Image.asset(Assets.subPropertyImage),
                      const SizedBox(width: 5),
                      Image.asset(Assets.subPropertyImage),
                      const SizedBox(width: 5),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // property type
                  Text(
                    property[propertyIndex].propertyType,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // property address
                  Text(
                    property[propertyIndex].address,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
              // contact details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // phone and email
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Coloring.ble9,
                        child: Icon(
                          Icons.phone_outlined,
                          color: Coloring.wte,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 15),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Coloring.ble9,
                        child: Icon(
                          Icons.email_outlined,
                          color: Coloring.wte,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  // available
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 4.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Available',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Coloring.grn1,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(Assets.availablePropertyImage),
                      ],
                    ),
                  ),
                  // Added today
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Added Today',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.ble10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// to show property details
class Property {
  String contactedPeople;
  String pricesFrom;
  String propertyStatus;
  List<String> image;
  String propertyType;
  String address;
  String count;
  int activePage;

  Property({
    required this.contactedPeople,
    required this.pricesFrom,
    required this.propertyStatus,
    required this.propertyType,
    required this.image,
    required this.address,
    required this.count,
    required this.activePage,
  });
}
