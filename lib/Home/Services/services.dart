import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class ServicesOffered extends StatefulWidget {
  const ServicesOffered({super.key});

  @override
  State<ServicesOffered> createState() => _ServicesOfferedState();
}

class _ServicesOfferedState extends State<ServicesOffered> {
  List<Service> services = [
    Service(image: '', title: 'Temple', subtitle: 'Service'),
    Service(image: '', title: 'Carpentry', subtitle: ''),
    Service(image: '', title: 'Packers &', subtitle: ' movers'),
    Service(image: '', title: 'Painting', subtitle: ''),
    Service(image: '', title: 'Home', subtitle: 'Renovation'),
    Service(image: '', title: 'AC Service &', subtitle: 'Repair'),
    Service(image: '', title: 'Plumbing', subtitle: ''),
    Service(image: '', title: 'Electrician', subtitle: ''),
    Service(image: '', title: 'Legal', subtitle: 'Services'),
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
        title: Image.asset(
          Assets.logo,
          scale: 20,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                Icons.location_on_outlined,
                color: Coloring.wte,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text field for search service
            Container(
              height: 40,
              padding: const EdgeInsets.only(),
              margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Coloring.wte),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.outer,
                        blurRadius: 4,
                        offset: const Offset(0, 0),
                        color: Coloring.blk35)
                  ],
                  color: Coloring.wte,
                  borderRadius: BorderRadius.circular(25)),
              child: TextFormField(
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk1)),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    color: Coloring.blk,
                    size: 18,
                  ),
                  prefixIcon: Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 13),
                    child: Text(
                      'Search',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk.withOpacity(0.4),
                      )),
                    ),
                  ),
                  // hintText: 'Kitchen Cleaning',
                  // hintStyle: GoogleFonts.poppins(
                  //     textStyle: TextStyle(
                  //   decoration: TextDecoration.none,
                  //   fontSize: 10,
                  //   fontWeight: FontWeight.w400,
                  //   color: Coloring.blk,
                  // )),
                  contentPadding: EdgeInsets.zero,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Coloring.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Coloring.transparent),
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
            // grid view builder for services
            GridView.builder(
              padding: const EdgeInsets.all(25),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 90,
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                childAspectRatio: 0.2,
              ),
              itemCount: services.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                color: Coloring.otpSelectedBorderColor2,
                                blurStyle: BlurStyle.outer,
                                blurRadius: 5,
                                offset: const Offset(0, 0))
                          ],
                          border: Border.all(
                              color: Coloring.blk.withOpacity(0.2), width: 1)),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: Coloring.lgtBlue,
                            ),
                            child: Image.asset(Assets.homeLoan),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Text(
                              'AC Services & Repair',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                                color: Coloring.blk3,
                              )),
                            ),
                          ),
                          // Center(
                          //   child: Text(
                          //     'Repair',
                          //     style: GoogleFonts.poppins(
                          //         textStyle: TextStyle(
                          //       decoration: TextDecoration.none,
                          //       fontSize: 8,
                          //       fontWeight: FontWeight.w500,
                          //       color: Coloring.blk3,
                          //     )),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, top: 1, bottom: 1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Coloring.lgtOrange,
                        ),
                        child: Text(
                          'Flat 25% off',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 4,
                            fontWeight: FontWeight.w300,
                            color: Coloring.blk5,
                          )),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            // 2 Lacs + services booked in last 2 months
            Container(
              margin: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 20),
              padding:
                  const EdgeInsets.only(left: 25, right: 15, top: 7, bottom: 7),
              decoration: BoxDecoration(
                color: Coloring.ble,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Align(
                          widthFactor: 0.5,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage: AssetImage(Assets.person),
                          ),
                        )
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 210,
                    child: Text(
                      '2 Lacs + services booked in last 2 months',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.wte,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            // Offers for you
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20),
              child: Text(
                'Offers for you',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk,
                )),
              ),
            ),
            // Service offers for you
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 260,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Coloring.lgtBlue4,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Coloring.blk10,
                                    offset: const Offset(0, 0),
                                    blurStyle: BlurStyle.outer)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lowest rates',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.blk,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  'Upto 25% off on Painting',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Coloring.lgtBlue5,
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 4, bottom: 4),
                                decoration: BoxDecoration(
                                  color: Coloring.wte,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Text(
                                  'Book Now',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk,
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            right: 40,
                            child: Image.asset(Assets.paintServiceMan))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 260,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Coloring.ylw,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Coloring.blk10,
                                    offset: const Offset(0, 0),
                                    blurStyle: BlurStyle.outer)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lowest rates',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.blk,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  'Upto 25% off on Painting',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Coloring.lgtBlue5,
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 4, bottom: 4),
                                decoration: BoxDecoration(
                                  color: Coloring.wte,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Text(
                                  'Book Now',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk,
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            right: 40,
                            child: Image.asset(Assets.paintServiceMan))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 260,
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Coloring.ylw,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Coloring.blk10,
                                    offset: const Offset(0, 0),
                                    blurStyle: BlurStyle.outer)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lowest rates',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.blk,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 80,
                                child: Text(
                                  'Upto 25% off on Painting',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Coloring.lgtBlue5,
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 4, bottom: 4),
                                decoration: BoxDecoration(
                                  color: Coloring.wte,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Text(
                                  'Book Now',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk,
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            right: 40,
                            child: Image.asset(Assets.paintServiceMan))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // AC Service
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            Assets.serviceBg,
                            scale: 0.9,
                          ),
                          Positioned(
                            top: 5,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 7,
                                ),
                                Image.asset(
                                  Assets.acGasService,
                                  scale: 1.5,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'AC Gas Charging',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.bg6,
                                  )),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Starting @ \$345',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.gry,
                                  )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [
                              BoxShadow(
                                  color: Coloring.blk10,
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0))
                            ]),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            Assets.serviceBg,
                            scale: 0.9,
                          ),
                          Positioned(
                            top: 5,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 7,
                                ),
                                Image.asset(
                                  Assets.acGasService,
                                  scale: 1.5,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'AC Repair',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.bg6,
                                  )),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Starting @ \$345',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.gry,
                                  )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [
                              BoxShadow(
                                  color: Coloring.blk10,
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0))
                            ]),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            Assets.serviceBg,
                            scale: 0.9,
                          ),
                          Positioned(
                            top: 5,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 7,
                                ),
                                Image.asset(
                                  Assets.acGasService,
                                  scale: 1.5,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'AC Installation',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.bg6,
                                  )),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Starting @ \$345',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.gry,
                                  )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [
                              BoxShadow(
                                  color: Coloring.blk10,
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0))
                            ]),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // popular services
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10),
              child: Text(
                'Popular Service',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk,
                )),
              ),
            ),
            // popular services
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Packers & movers and Home Renovation
                Column(
                  children: [
                    // packets and movers
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(Assets.popularService1),
                        Container(
                          margin: const EdgeInsets.only(bottom: 8, left: 4),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 4, bottom: 4),
                          decoration: BoxDecoration(
                              color: Coloring.wte,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(4))),
                          child: Text(
                            'Packers & movers',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Coloring.blk5,
                            )),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Home Renovation
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(Assets.popularService1),
                        Container(
                          margin: const EdgeInsets.only(bottom: 8, left: 4),
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 4, bottom: 4),
                          decoration: BoxDecoration(
                              color: Coloring.wte,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(4))),
                          child: Text(
                            'Home Renovation',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Coloring.blk5,
                            )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                // home painting
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Image.asset(Assets.popularService2),
                    Container(
                      margin: const EdgeInsets.only(bottom: 8, left: 4),
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 4, bottom: 4),
                      decoration: BoxDecoration(
                          color: Coloring.wte,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(4))),
                      child: Text(
                        'Packers & movers',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk5,
                        )),
                      ),
                    )
                  ],
                ),
              ],
            ),
            // In Spotlight
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10, top: 20),
              child: Text(
                'In Spotlight',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk,
                )),
              ),
            ),
            // In Spotlight
            Stack(
              alignment: Alignment.center,
              children: [
                Center(child: Image.asset(Assets.inSpotLight)),
                Image.asset(Assets.videoIcon)
              ],
            ),
            // Relocation Simplified
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Text(
                'Relocation Simplified',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Coloring.blk,
                )),
              ),
            ),
            // Relocation Simplified
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            Assets.serviceBg,
                            scale: 0.9,
                          ),
                          Positioned(
                            top: 5,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Image.asset(
                                  Assets.relocationSimplified1,
                                ),
                                Text(
                                  'Between Cities',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.bg6,
                                  )),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Get free quote',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.gry,
                                  )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [
                              BoxShadow(
                                  color: Coloring.blk10,
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0))
                            ]),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(Assets.serviceBg, scale: 0.9),
                          Positioned(
                            top: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  Assets.relocationSimplified1,
                                ),
                                Text(
                                  'Within the City',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.bg6,
                                  )),
                                ),
                                Text(
                                  'Upto 30% off',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.gry,
                                  )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [
                              BoxShadow(
                                  color: Coloring.blk10,
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0))
                            ]),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            Assets.serviceBg,
                            scale: 0.9,
                          ),
                          Positioned(
                            top: 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  Assets.relocationSimplified1,
                                ),
                                Text(
                                  'Within the City',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.bg6,
                                  )),
                                ),
                                Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        'Move Anything',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: Coloring.gry,
                                        )),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'Anywhere within',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: Coloring.gry,
                                        )),
                                      ),
                                    ),
                                    Center(
                                      child: Text(
                                        'city \$ 123',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: Coloring.gry,
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            boxShadow: [
                              BoxShadow(
                                  color: Coloring.blk10,
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0))
                            ]),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// to show grid view services data
class Service {
  String image;
  String title;
  String subtitle;
  Service({required this.image, required this.title, required this.subtitle});
}
