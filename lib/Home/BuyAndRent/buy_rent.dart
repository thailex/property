import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/Properties/Property%20Details/properties_buy.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Buy/buy.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Rent/Properties/Property%20Details/properties_rent.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/Rent/rent.dart';

class BuyAndRent extends StatefulWidget {
  const BuyAndRent({super.key});

  @override
  State<BuyAndRent> createState() => _BuyAndRentState();
}

class _BuyAndRentState extends State<BuyAndRent> {
  bool isBuy = true;
  bool isRent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Coloring.bg1,
                Coloring.bg2,
                Coloring.bg3,
              ])),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      // background image
                      SvgPicture.asset(
                        Assets.bg,
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width,
                      ),
                      // heading
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 18),
                        child: Stack(
                          children: [
                            Positioned(
                              left: MediaQuery.of(context).size.width / 10,
                              top: MediaQuery.of(context).size.height / 60,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Coloring.wte,
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                Assets.logo,
                                scale: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // bottom button for search and clear
                  (isBuy == true)
                      ? Expanded(
                          child: Container(
                            color: Coloring.wte,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PropertiesBuy(),
                                              ));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                            top: 25,
                                            bottom: 25,
                                          ),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Coloring.ble,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Coloring.ble10,
                                                  blurRadius: 4,
                                                  blurStyle: BlurStyle.outer,
                                                )
                                              ]),
                                          child: Text(
                                            'SEARCH',
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
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          top: 25,
                                          bottom: 25,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Coloring.wte,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Coloring.ble,
                                                blurRadius: 4,
                                                blurStyle: BlurStyle.outer,
                                              )
                                            ]),
                                        child: Text(
                                          'CLEAR',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Coloring.ble,
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      : Expanded(
                          child: Container(
                            color: Coloring.wte,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PropertiesRent(),
                                              ));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                            top: 25,
                                            bottom: 25,
                                          ),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Coloring.ble,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Coloring.ble10,
                                                  blurRadius: 4,
                                                  blurStyle: BlurStyle.outer,
                                                )
                                              ]),
                                          child: Text(
                                            'SEARCH',
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
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          top: 25,
                                          bottom: 25,
                                        ),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Coloring.wte,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Coloring.ble,
                                                blurRadius: 4,
                                                blurStyle: BlurStyle.outer,
                                              )
                                            ]),
                                        child: Text(
                                          'CLEAR',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Coloring.ble,
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                ],
              ),
            ),
            // body for buy and rent
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.2,
              child: Column(
                children: [
                  // Buy and Rent
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isBuy = true;
                              isRent = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'Buy',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Coloring.wte,
                                )),
                              ),
                              (isBuy)
                                  ? const SizedBox(
                                      height: 18,
                                    )
                                  : const SizedBox(
                                      height: 25,
                                    ),
                              (isBuy)
                                  ? Container(
                                      width: 70,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          color: Coloring.wte,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      SizedBox(
                        width: 70,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isRent = true;
                              isBuy = false;
                            });
                          },
                          child: Column(
                            children: [
                              Text(
                                'Rent',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Coloring.wte,
                                )),
                              ),
                              (isRent)
                                  ? const SizedBox(
                                      height: 18,
                                    )
                                  : const SizedBox(
                                      height: 25,
                                    ),
                              (isRent)
                                  ? Container(
                                      width: 70,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          color: Coloring.wte,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  body()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // body
  body() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5, bottom: 68),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.outer,
                blurRadius: 4,
                offset: const Offset(0, 0),
                color: Coloring.blk10,
              )
            ],
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40)),
            color: Coloring.wte),
        child: (isBuy == true) ? const Buy() : const Rent(),
      ),
    );
  }
}
