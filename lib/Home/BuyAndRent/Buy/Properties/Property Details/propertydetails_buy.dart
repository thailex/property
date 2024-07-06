import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/addNote.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/email_agent.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/enquiry.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/leasehold.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/market_information.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/nearby%20places.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/photos.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/videos.dart';

class PropertyDetailsBuy extends StatefulWidget {
  const PropertyDetailsBuy({super.key});

  @override
  State<PropertyDetailsBuy> createState() => _PropertyDetailsBuyState();
}

class _PropertyDetailsBuyState extends State<PropertyDetailsBuy>
    with TickerProviderStateMixin {
  late PageController _pageViewController;
  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool readMore = false;
  List<PropertyDetail> propertyDetail = [
    PropertyDetail(currentImage: 1, totalImage: 3),
    PropertyDetail(currentImage: 1, totalImage: 3),
    PropertyDetail(currentImage: 1, totalImage: 3),
  ];
  List<MortgageCalculator> mortgageCalculator = [
    MortgageCalculator(name: 'price'),
    MortgageCalculator(name: 'Deposit(20%)'),
    MortgageCalculator(name: 'Repayment term'),
    MortgageCalculator(name: 'Interest rate'),
  ];
  List<Amenities> amenities = [
    Amenities(
        amenitiesImage: Assets.amenitiesCar, amenitiesName: 'Car Parking'),
    Amenities(amenitiesImage: Assets.amenitiesCar, amenitiesName: 'Security'),
    Amenities(amenitiesImage: Assets.amenitiesCar, amenitiesName: 'Security'),
    Amenities(
        amenitiesImage: Assets.amenitiesCar, amenitiesName: 'Power Backup'),
    Amenities(amenitiesImage: Assets.amenitiesCar, amenitiesName: 'Gym'),
    Amenities(amenitiesImage: Assets.amenitiesCar, amenitiesName: 'Car'),
    Amenities(amenitiesImage: Assets.amenitiesCar, amenitiesName: 'Car'),
  ];
  List<MoreInformation> moreInformation = [
    MoreInformation(
      name: 'Photos(8)',
      icons: Icons.arrow_forward_ios,
      photos: Assets.photosLogo,
    ),
    MoreInformation(
        name: 'Leasehold',
        icons: Icons.arrow_forward_ios,
        photos: Assets.leaseholdLogo),
    MoreInformation(
        name: 'Floor plan',
        icons: Icons.arrow_forward_ios,
        photos: Assets.floorPlanLogo),
    MoreInformation(
        name: 'Video Tour',
        icons: Icons.arrow_forward_ios,
        photos: Assets.videoTourLogo),
    MoreInformation(
        name: 'Council Tax',
        icons: Icons.arrow_forward_ios,
        photos: Assets.councilTaxLogo),
    MoreInformation(
        name: 'View on a map',
        icons: Icons.arrow_forward_ios,
        photos: Assets.viewOnMapLogo),
    MoreInformation(
        name: 'Street view',
        icons: Icons.arrow_forward_ios,
        photos: Assets.StreetViewLogo),
    MoreInformation(
        name: 'Near by',
        icons: Icons.arrow_forward_ios,
        photos: Assets.viewOnMapLogo),
    MoreInformation(
        name: 'School Checker',
        icons: Icons.arrow_forward_ios,
        photos: Assets.schoolCheckerLogo),
    MoreInformation(
        name: 'Market Information',
        icons: Icons.arrow_forward_ios,
        photos: Assets.moreInformationLogo),
    MoreInformation(
        name: 'Create a remainder',
        icons: Icons.arrow_forward_ios,
        photos: Assets.createRemainderLogo),
    MoreInformation(
        name: 'Add a note',
        icons: Icons.arrow_forward_ios,
        photos: Assets.addNoteLogo),
    MoreInformation(
        name: 'Glossary',
        icons: Icons.arrow_forward_ios,
        photos: Assets.glossaryLogo),
  ];
  int _activePage = 0;
  String? selectedValue;
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
            'Property details',
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
            // view property images
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.77,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Stack(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          // pageView for view property images
                          PageView.builder(
                            controller: _pageViewController,
                            onPageChanged: (value) {
                              setState(() {
                                _activePage = value;
                              });
                            },
                            itemCount: propertyDetail.length,
                            itemBuilder: (context, index) {
                              return Stack(
                                alignment: Alignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      Assets.propertyDetails,
                                                    ),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Positioned(
                                            right: 35,
                                            top: 20,
                                            child: Row(
                                              children: [
                                                // share
                                                CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Coloring.wte9
                                                      .withOpacity(0.5),
                                                  child: Icon(
                                                    Icons.share_outlined,
                                                    color: Coloring.blk,
                                                    size: 15,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                // favorites
                                                CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Coloring.wte9
                                                      .withOpacity(0.5),
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
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                          // indicator
                          Positioned(
                            bottom: 4,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: _buildIndicator()),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        alignment: Alignment.center,
                        width: 60,
                        height: 27,
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 4, bottom: 4),
                        decoration: BoxDecoration(
                            color: Coloring.blk15,
                            borderRadius: BorderRadius.circular(4)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.image,
                              height: 13,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              (_activePage + 1).toString(),
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.wte,
                              )),
                            ),
                            Text(
                              '/',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.wte,
                              )),
                            ),
                            Text(
                              '3',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Coloring.wte,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (_pageViewController.hasClients) {
                            _pageViewController.previousPage(
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.ease,
                            );
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Coloring.wte),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Coloring.wte,
                            size: 15,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_pageViewController.hasClients) {
                            _pageViewController.nextPage(
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.ease,
                            );
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Coloring.wte),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Coloring.wte,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // contacted peoples
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5),
              child: Row(
                children: [
                  // contact image
                  SvgPicture.asset(
                    Assets.propertyContactedDetailsLogo,
                    height: 12,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  // 2 people contacted yesterday
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Text(
                      '2 people contacted yesterday',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // property price and type
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  // property price
                  Text(
                    '\$ 679,000',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk,
                    )),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  SizedBox(
                    width: 2,
                    height: 12,
                    child: VerticalDivider(
                      color: Coloring.blk,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  // property type
                  Text(
                    '1 BHK Flat',
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
            ),
            const SizedBox(
              height: 5,
            ),
            // Added yesterday
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Added Yesterday',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk.withOpacity(0.4),
                )),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Address (Otley Road,Harrogate,HG3 2AN)
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Otley Road,Harrogate,HG3 2AN',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk.withOpacity(0.4),
                )),
              ),
            ),
            // Home type (New Home)
            Container(
              margin: const EdgeInsets.only(left: 20, top: 5),
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              decoration: BoxDecoration(
                  color: Coloring.ble9,
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                'New Home',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte,
                )),
              ),
            ),
            // Amenities
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15),
              child: Text(
                'Amenities',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk,
                )),
              ),
            ),
            // Amenities details
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: amenities
                      .map((e) => Container(
                            width: MediaQuery.of(context).size.width / 4,
                            height: MediaQuery.of(context).size.height / 12,
                            margin: const EdgeInsets.only(right: 20, top: 10),
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Coloring.wte11, width: 0.5),
                                borderRadius: BorderRadius.circular(4)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  e.amenitiesImage,
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    e.amenitiesName,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: Coloring.ble9,
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
            // Property Details
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15),
              child: Text(
                'Property Details',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk,
                )),
              ),
            ),
            // Property Details
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.wte,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                    spreadRadius: 2,
                    offset: const Offset(0, 2),
                    color: Coloring.otpSelectedBorderColor2,
                  )
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              // Property Details
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Bed Rooms
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //BedRooms
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.propertyDetailsBedRooms,
                              height: 10,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Bed Rooms',
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
                        const SizedBox(
                          height: 5,
                        ),
                        // 1 BHK
                        Text(
                          '1 BHK',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: Coloring.blk8,
                          )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // location
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Coloring.blk16,
                              size: 10,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Location',
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
                        const SizedBox(
                          height: 5,
                        ),
                        // Address (Harrogate , North Yorkshire,UK)
                        SizedBox(
                          width: 80,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            'Harrogate , North Yorkshire,UK',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk8,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                    child: VerticalDivider(
                      width: MediaQuery.of(context).size.width / 15,
                    ),
                  ),
                  // Property types
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //BedRooms
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.propertyDetailsPropertyType,
                              height: 10,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Property Types',
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
                        const SizedBox(
                          height: 5,
                        ),
                        // 1 BHK
                        Text(
                          'Detached',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: Coloring.blk8,
                          )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // location
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.propertyDetailsStatus,
                              height: 10,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Status',
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
                        const SizedBox(
                          height: 5,
                        ),
                        // Address (Harrogate , North Yorkshire,UK)
                        SizedBox(
                          width: 80,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            'Ready to Move',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk8,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                    child: VerticalDivider(
                      width: MediaQuery.of(context).size.width / 15,
                    ),
                  ),
                  // Covered Area
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //BedRooms
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.propertyDetailsCoveredArea,
                              height: 10,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Covered Area',
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
                        const SizedBox(
                          height: 5,
                        ),
                        // 1 BHK
                        Text(
                          '1569 Sqft',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                            color: Coloring.blk8,
                          )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // location
                        Row(
                          children: [
                            SvgPicture.asset(
                              Assets.propertyDetailsFurnishing,
                              height: 10,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Furnishing',
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
                        const SizedBox(
                          height: 5,
                        ),
                        // Address (Harrogate , North Yorkshire,UK)
                        SizedBox(
                          width: 80,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            'Furnished',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk8,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Still want to know more? and Enquiry Now
            Container(
              padding: const EdgeInsets.only(
                  left: 30, right: 20, top: 20, bottom: 20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.wte,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: const Offset(0, 4),
                    color: Coloring.otpSelectedBorderColor2,
                  )
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              // Still want to know more? and Enquiry Now
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Still want to know more?
                  Text(
                    'Still want to know more?',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk,
                    )),
                  ),
                  // Enquiry Now
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EnquiryNow(),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 4, bottom: 4),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Coloring.rd,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Enquiry Now',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Coloring.rd1,
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Like this property? and Whatsapp Share
            Container(
              padding: const EdgeInsets.only(
                  left: 30, right: 20, top: 20, bottom: 20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.wte,
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: const Offset(0, 4),
                    color: Coloring.otpSelectedBorderColor2,
                  )
                ],
                borderRadius: BorderRadius.circular(4),
              ),
              // Like this property? and Whatsapp Share
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Like this property?
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Like this property?',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk,
                        )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 120,
                        child: Text(
                          'Share this with your friends & family on whatsapp',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk,
                          )),
                        ),
                      ),
                    ],
                  ),
                  // Whatsapp Share
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 15, top: 4, bottom: 4),
                    decoration: BoxDecoration(
                      color: Coloring.grn2,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.whatsappLogo),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Share',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.wte,
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // people viewed this property
            Center(
              child: Container(
                width: 250,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Coloring.wte12,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: Coloring.otpSelectedBorderColor2,
                        blurRadius: 4,
                        blurStyle: BlurStyle.outer,
                        offset: const Offset(0, 4),
                      )
                    ]),
                // people viewed this property
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      Assets.propertyDetailsViewedPeople,
                      height: 20,
                    ),
                    // people viewed this property
                    SizedBox(
                      width: 150,
                      child: Text(
                        '20+ people viewed this property in last 24 hours',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Coloring.blk,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // About property
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Coloring.wte12,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Coloring.otpSelectedBorderColor2,
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer,
                      offset: const Offset(0, 3),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Property',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk,
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: RichText(
                        text: TextSpan(children: [
                      WidgetSpan(
                        child: SizedBox(
                          width: 230,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: readMore ? 8 : 4,
                            'Welcome to your dream ncncn ncnncnc ncnnnc cncnnc cncnnc cnnc  cnc c cncn cncnc cncnncnn c ncnnc cncnncnc cncnnc cnnc cnfamily home! This charming 3-bedroom,2.5-bathroom single-family residence is nestled in the heart of the sought-after Willowbrook neighborhood. With its inviting curb appeal, spacious interiors, and an unbeatable location, this property offers the ideal blend of comfort and convenience',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk,
                            )),
                          ),
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(() {
                              readMore = !readMore;
                            });
                          },
                        text: readMore ? 'Readless' : 'Readmore',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Coloring.gradient2,
                        )),
                      )
                    ])),
                  ),
                ],
              ),
            ),
            // More Information
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
              child: Text(
                'More Information',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk,
                )),
              ),
            ),
            // Listview builder for more information
            ListView.builder(
              itemCount: moreInformation.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    (index == 0)
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Photos(),
                            ))
                        : (index == 3)
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Videos(),
                                ))
                            : (index == 9)
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MarketInformation(),
                                    ))
                                : (index == 1)
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LeaseHold(),
                                        ))
                                    : (index == 7)
                                        ? Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const NearByPlaces(),
                                            ))
                                        : (index == 11)
                                            ? Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AddNote(),
                                                ))
                                            : Container();
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, bottom: 0, top: 0),
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                        color: Coloring.wte12,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Coloring.otpSelectedBorderColor2,
                            blurRadius: 10,
                            blurStyle: BlurStyle.outer,
                            offset: const Offset(1, 0),
                          )
                        ]),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: SvgPicture.asset(moreInformation[index].photos),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          moreInformation[index].name,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk,
                          )),
                        ),
                      ),
                      trailing: Icon(
                        moreInformation[index].icons,
                        size: 20,
                        color: Coloring.blk.withOpacity(0.4),
                      ),
                    ),
                  ),
                );
              },
            ),
            // Mortgage calculator
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.only(bottom: 15),
              color: Coloring.wte13,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Mortgage calculator
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, top: 15, bottom: 10),
                    child: Text(
                      'Mortgage calculator',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk,
                      )),
                    ),
                  ),
                  // text field form for Mortgage Calculator
                  Form(
                      key: _formKey,
                      child: ListView.builder(
                        itemCount: mortgageCalculator.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 8),
                                  child: Text(
                                    mortgageCalculator[index].name,
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Coloring.blk,
                                    )),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  margin: const EdgeInsets.only(
                                      left: 40, right: 30, top: 10),
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        color: Coloring.blk16.withOpacity(0.4),
                                        blurRadius: 4,
                                        blurStyle: BlurStyle.outer,
                                        offset: const Offset(0, 0))
                                  ], borderRadius: BorderRadius.circular(4)),
                                  child: TextFormField(
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Coloring.blk11,
                                    )),
                                    keyboardType: TextInputType.streetAddress,
                                    decoration: InputDecoration(
                                      floatingLabelAlignment:
                                          FloatingLabelAlignment.start,
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      contentPadding: const EdgeInsets.only(
                                          right: 15, top: 10, left: 15),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                          color:
                                              Coloring.otpSelectedBorderColor4,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                          color:
                                              Coloring.otpSelectedBorderColor4,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide: BorderSide(
                                          color:
                                              Coloring.otpSelectedBorderColor4,
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
                              ]);
                        },
                      ))
                ],
              ),
            ),
            // result from calculator ($34,556 Per month)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    '\$34,556',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    'Per month',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk18,
                    )),
                  ),
                ),
              ],
            ),
            // How much could i borrow?
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 10, bottom: 10),
              margin: const EdgeInsets.only(
                  left: 30, right: 30, top: 15, bottom: 10),
              decoration: BoxDecoration(
                color: Coloring.ble,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'How much could i borrow?',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Coloring.wte,
                )),
              ),
            ),
            // real estate logo
            Center(child: Image.asset(Assets.realEstateLogo)),
            // Asset Real Estate,Otley
            Padding(
              padding: const EdgeInsets.only(),
              child: Center(
                child: Text(
                  'Asset Real Estate,Otley',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk19,
                  )),
                ),
              ),
            ),
            // Road,Harrogate,
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                child: Text(
                  'Road,Harrogate,',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk19,
                  )),
                ),
              ),
            ),
            // HG3 2AN
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                child: Text(
                  'HG3 2AN',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk19,
                  )),
                ),
              ),
            ),
            // bottom buttons for call and email
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                        ),
                        alignment: Alignment.center,
                        decoration:
                            BoxDecoration(color: Coloring.ble, boxShadow: [
                          BoxShadow(
                            color: Coloring.blk10,
                            blurRadius: 4,
                            blurStyle: BlurStyle.outer,
                          )
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone_outlined,
                              color: Coloring.wte,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Call',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Coloring.wte,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EmailAgent(),
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 20,
                        ),
                        alignment: Alignment.center,
                        decoration:
                            BoxDecoration(color: Coloring.wte, boxShadow: [
                          BoxShadow(
                            color: Coloring.ble,
                            blurRadius: 0.5,
                            blurStyle: BlurStyle.outer,
                          )
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Coloring.ble,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Email',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(42, 47, 95, 1),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // indicator true for page scroll
  _indicatorTrue() {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
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
  _indicatorFalse() {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
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
  List<Widget> _buildIndicator() {
    final indicators = <Widget>[];

    for (var i = 0; i < propertyDetail.length; i++) {
      if (_activePage == i) {
        indicators.add(_indicatorTrue());
      } else {
        indicators.add(_indicatorFalse());
      }
    }
    return indicators;
  }
}

//to show property details data
class PropertyDetail {
  int currentImage;
  int totalImage;
  PropertyDetail({required this.currentImage, required this.totalImage});
}

//to show amenities details data
class Amenities {
  String amenitiesImage;
  String amenitiesName;
  Amenities({required this.amenitiesImage, required this.amenitiesName});
}

// to show More Information data
class MoreInformation {
  String photos;
  String name;
  IconData icons;
  MoreInformation(
      {required this.name, required this.icons, required this.photos});
}

// to show MortgageCalculator data
class MortgageCalculator {
  String name;
  MortgageCalculator({required this.name});
}
