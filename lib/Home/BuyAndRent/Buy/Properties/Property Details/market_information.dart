import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class MarketInformation extends StatefulWidget {
  const MarketInformation({super.key});

  @override
  State<MarketInformation> createState() => _MarketInformationState();
}

class _MarketInformationState extends State<MarketInformation> {
  bool isForSale = true;
  bool isUnderOffer = false;
  bool isSold = false;
  List<SimilarNearByProperties> similarNearByPropertiesForSale = [
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$378,000',
        photo: Assets.marketInformationImage),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$478,000',
        photo: Assets.marketInformationImage),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$578,000',
        photo: Assets.marketInformationImage),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$678,000',
        photo: Assets.marketInformationImage),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$778,000',
        photo: Assets.marketInformationImage),
  ];
  List<SimilarNearByProperties> similarNearByPropertiesUnderOffer = [
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$378,000',
        photo: Assets.marketInformation1),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$478,000',
        photo: Assets.marketInformation1),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$578,000',
        photo: Assets.marketInformation1),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$678,000',
        photo: Assets.marketInformation1),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$778,000',
        photo: Assets.marketInformation1),
  ];
  List<SimilarNearByProperties> similarNearByPropertiesSold = [
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$378,000',
        photo: Assets.marketInformation2),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$478,000',
        photo: Assets.marketInformation2),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$578,000',
        photo: Assets.marketInformation2),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$678,000',
        photo: Assets.marketInformation2),
    SimilarNearByProperties(
        address: 'St Olave’s House ,56 Marygate,York',
        distance: 'Within 0.2 miles',
        price: '\$778,000',
        photo: Assets.marketInformation2),
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
          padding: const EdgeInsets.only(left: 35.0, bottom: 20),
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
          padding: const EdgeInsets.only(bottom: 20),
          child: Text(
            'Market Information',
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
        toolbarHeight: 120,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Similar NearBy Properties',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Coloring.wte,
                  )),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isForSale = !isForSale;
                          isSold = false;
                          isUnderOffer = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: (isForSale) ? Coloring.ble11 : Coloring.wte10,
                        ),
                        child: Text(
                          'For Sale',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: (isForSale) ? Coloring.wte : Coloring.blk,
                          )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isUnderOffer = !isUnderOffer;
                          isSold = false;
                          isForSale = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              (isUnderOffer) ? Coloring.ble11 : Coloring.wte10,
                        ),
                        child: Text(
                          'Under Offer',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: (isUnderOffer) ? Coloring.wte : Coloring.blk,
                          )),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSold = !isSold;
                          isUnderOffer = false;
                          isForSale = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: (isSold) ? Coloring.ble11 : Coloring.wte10,
                        ),
                        child: Text(
                          'Sold',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: (isSold) ? Coloring.wte : Coloring.blk,
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          // These ae the nearest properties on the market with the same number of bedrooms.
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25, top: 10, bottom: 10),
            child: Text(
              'These ae the nearest properties on the market with the same number of bedrooms.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk,
              )),
            ),
          ),
          (isForSale == true)
              ? forSale()
              : (isUnderOffer)
                  ? underOffer()
                  : sold(),
        ],
      )),
    );
  }

  // to show for sale property details
  forSale() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: similarNearByPropertiesForSale.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Coloring.wte,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                    color: Coloring.otpSelectedBorderColor2,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ]),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(similarNearByPropertiesForSale[index].photo),
              // property details
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Coloring.blk20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      similarNearByPropertiesForSale[index].price,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Coloring.wte,
                      )),
                    ),
                    Text(
                      'Guide Price',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w300,
                        color: Coloring.wte,
                      )),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: 62.5,
                      child: Text(
                        similarNearByPropertiesForSale[index].address,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 6,
                          fontWeight: FontWeight.w300,
                          color: Coloring.wte,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      similarNearByPropertiesForSale[index].distance,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Coloring.wte,
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  // to show for under offer details
  underOffer() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: similarNearByPropertiesUnderOffer.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Coloring.wte,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                    color: Coloring.otpSelectedBorderColor2,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ]),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(similarNearByPropertiesUnderOffer[index].photo),
              // property details
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Coloring.blk20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      similarNearByPropertiesUnderOffer[index].price,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Coloring.wte,
                      )),
                    ),
                    Text(
                      'Guide Price',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w300,
                        color: Coloring.wte,
                      )),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: 62.5,
                      child: Text(
                        similarNearByPropertiesUnderOffer[index].address,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 6,
                          fontWeight: FontWeight.w300,
                          color: Coloring.wte,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      similarNearByPropertiesUnderOffer[index].distance,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Coloring.wte,
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  // to show for sold details
  sold() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: similarNearByPropertiesSold.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Coloring.wte,
              borderRadius: BorderRadius.circular(4),
              boxShadow: [
                BoxShadow(
                    color: Coloring.otpSelectedBorderColor2,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                    offset: const Offset(0, 4))
              ]),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(similarNearByPropertiesSold[index].photo),
              // property details
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Coloring.blk20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      similarNearByPropertiesSold[index].price,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Coloring.wte,
                      )),
                    ),
                    Text(
                      'Guide Price',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w300,
                        color: Coloring.wte,
                      )),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: 62.5,
                      child: Text(
                        similarNearByPropertiesSold[index].address,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 6,
                          fontWeight: FontWeight.w300,
                          color: Coloring.wte,
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      similarNearByPropertiesSold[index].distance,
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Coloring.wte,
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

// to show SimilarNearByProperties data
class SimilarNearByProperties {
  String price;
  String address;
  String distance;
  String photo;
  SimilarNearByProperties(
      {required this.address,
      required this.distance,
      required this.price,
      required this.photo});
}
