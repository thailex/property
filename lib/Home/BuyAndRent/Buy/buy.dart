import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class Buy extends StatefulWidget {
  const Buy({super.key});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  final TextEditingController startValuePriceBuyController =
      TextEditingController();
  final TextEditingController endValuePriceBuyController =
      TextEditingController();
  final TextEditingController startValueAreaBuyController =
      TextEditingController();
  final TextEditingController endValueAreaBuyController =
      TextEditingController();
  bool isSelectPriceBuy = false;
  String? _selectedValuePropertyTypeBuy;
  String? _selectedValueAddedToSiteBuy;
  String? _selectedValueAmenitiesBuy;
  String? _selectedValueFurnishingStatusBuy;
  String? _selectedValueReraApprovedBuy;
  final List<String> propertyTypeBuy = [
    'property 1',
    'property 2',
    'property 3'
  ];
  final List<String> addedToSiteBuy = [
    'addedToSite 1',
    'addedToSite 2',
    'addedToSite 3'
  ];
  final List<String> amenitiesBuy = [
    'amenities 1',
    'amenities 2',
    'amenities 3'
  ];
  final List<String> furnishingStatusBuy = [
    'furnishingStatus 1',
    'furnishingStatus 2',
    'furnishingStatus 3'
  ];
  final List<String> reraApprovedBuy = [
    'reraApproved 1',
    'reraApproved 2',
    'reraApproved 3'
  ];
  int startPriceRangeValueBuy = 0;
  int endPriceRangeValueBuy = 100000000;
  int startSqFtBuy = 0;
  int endSqFtBuy = 4000;
  bool isBuy = true;
  bool isRent = false;
  bool isYesBuy = true;
  bool isNoBuy = false;
  bool isBuyFilter = false;
  bool checkBoxValueBuy = false;
  final GlobalKey<FormState> _formKeyBuy = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeyBuyPrice = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeyAreaBuy = GlobalKey<FormState>();
  List<BhkType> bhkTypesBuy = [
    BhkType(bhkType: '1 RK'),
    BhkType(bhkType: '1 BHK'),
    BhkType(bhkType: '2 BHK'),
    BhkType(bhkType: '3 BHK'),
    BhkType(bhkType: '4 BHK'),
    BhkType(bhkType: '4+ BHK'),
  ];
  @override
  void initState() {
    super.initState();
    startValuePriceBuyController.text = startPriceRangeValueBuy.toString();
    endValuePriceBuyController.text = endPriceRangeValueBuy.toString();
    startValueAreaBuyController.text = startSqFtBuy.toString();
    endValueAreaBuyController.text = endSqFtBuy.toString();
  }

  _showMyDialogBuy() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // User must tap the button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Price Range',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Coloring.blk,
              ),
            ),
          ),
          content: SingleChildScrollView(
            child: Form(
              key: _formKeyBuyPrice,
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(right: 55, bottom: 10, top: 10),
                    child: TextFormField(
                      controller: startValuePriceBuyController,
                      maxLength: 9,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk11,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Start value',
                        labelStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk11,
                          ),
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Enter Start value',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry10,
                          ),
                        ),
                        errorStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.only(right: 15, top: 10),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Field';
                        }
                        if (int.parse(value) > endPriceRangeValueBuy) {
                          return 'Start value must be less than or equal to end value';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(right: 55, bottom: 10, top: 10),
                    child: TextFormField(
                      controller: endValuePriceBuyController,
                      maxLength: 9,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk11,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'End value',
                        labelStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk11,
                          ),
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Enter End value',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry10,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.only(right: 15, top: 10),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return Text(
                            'Required field',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            )),
                          ).toString();
                        }
                        if (int.parse(value) < startPriceRangeValueBuy) {
                          return 'Start value must be less than or equal to end value';
                        }
                        if (int.parse(value) > endPriceRangeValueBuy) {
                          return 'End value must be less than or equal to end value';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                if (_formKeyBuyPrice.currentState?.validate() ?? false) {
                  setState(() {
                    startPriceRangeValueBuy =
                        int.parse(startValuePriceBuyController.text);
                    endPriceRangeValueBuy =
                        int.parse(endValuePriceBuyController.text);
                  });
                  Navigator.pop(context);
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Coloring.ble6,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Coloring.blk10,
                      offset: const Offset(0, 0),
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Text(
                  'Ok',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Coloring.wte,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showMyDialogAreaBuy() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // User must tap the button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Price Range',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Coloring.blk,
              ),
            ),
          ),
          content: SingleChildScrollView(
            child: Form(
              key: _formKeyAreaBuy,
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(right: 55, bottom: 10, top: 10),
                    child: TextFormField(
                      controller: startValueAreaBuyController,
                      maxLength: 9,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk11,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Start value',
                        labelStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk11,
                          ),
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Enter Start value',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry10,
                          ),
                        ),
                        errorStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.only(right: 15, top: 10),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required Field';
                        }
                        if (int.parse(value) > endSqFtBuy) {
                          return 'Start value must be less than or equal to end value';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(right: 55, bottom: 10, top: 10),
                    child: TextFormField(
                      controller: endValueAreaBuyController,
                      maxLength: 9,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk11,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'End value',
                        labelStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk11,
                          ),
                        ),
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Enter End value',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry10,
                          ),
                        ),
                        contentPadding:
                            const EdgeInsets.only(right: 15, top: 10),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Coloring.gry11),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return Text(
                            'Required field',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            )),
                          ).toString();
                        }
                        if (int.parse(value) < startSqFtBuy) {
                          return 'Start value must be less than or equal to end value';
                        }
                        if (int.parse(value) > endSqFtBuy) {
                          return 'End value must be less than or equal to end value';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                if (_formKeyAreaBuy.currentState?.validate() ?? false) {
                  setState(() {
                    startSqFtBuy = int.parse(startValueAreaBuyController.text);
                    endSqFtBuy = int.parse(endValueAreaBuyController.text);
                  });
                  Navigator.pop(context);
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Coloring.ble6,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Coloring.blk10,
                      offset: const Offset(0, 0),
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Text(
                  'Ok',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Coloring.wte,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return buy();
  }

  // to show add more filter for buy
  buyFilter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Square Feet Range Slider
        SliderTheme(
            data: SliderThemeData(
              trackHeight: 0.5,
              inactiveTrackColor: Coloring.ble2,
              activeTrackColor: Coloring.ble2,
              thumbColor: Coloring.ble3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 35.0,
                  ),
                  child: Text(
                    'Area',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk11,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      _showMyDialogAreaBuy();
                    },
                    child: Row(
                      children: [
                        Text(
                          startSqFtBuy.toString(),
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(68, 68, 68, 1),
                          )),
                        ),
                        Text(
                          'sq.ft.',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(68, 68, 68, 1),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'to',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(68, 68, 68, 1),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          endSqFtBuy.toString(),
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(68, 68, 68, 1),
                          )),
                        ),
                        Text(
                          'sq.ft.',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(68, 68, 68, 1),
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0, right: 15),
                  child: RangeSlider(
                    min: 0,
                    max: 4000,
                    values: RangeValues(
                        startSqFtBuy.toDouble(), endSqFtBuy.toDouble()),
                    onChanged: (RangeValues value) {
                      if (value.start <= value.end) {
                        setState(() {
                          startSqFtBuy = value.start.toInt();
                          endSqFtBuy = value.end.toInt();
                          startValueAreaBuyController.text =
                              startSqFtBuy.toString();
                          endValueAreaBuyController.text =
                              endSqFtBuy.toString();
                        });
                      }
                    },
                  ),
                ),
              ],
            )),
        // Amenities dropdown text field
        Padding(
          padding: const EdgeInsets.only(
            left: 35.0,
            right: 35,
          ),
          child: DropdownButtonFormField(
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk11,
              ),
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            value: _selectedValueAmenitiesBuy,
            items: amenitiesBuy.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedValueAmenitiesBuy = newValue;
              });
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                right: 15,
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Coloring.gry9,
              )),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Coloring.gry9,
              )),
              hintText: 'Amenities',
              hintStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                height: 3,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk11,
              )),
            ),
          ),
        ),
        // Furnishing status dropdown text field
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35, top: 15),
          child: DropdownButtonFormField(
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk11,
              ),
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            value: _selectedValueFurnishingStatusBuy,
            items: furnishingStatusBuy
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedValueFurnishingStatusBuy = newValue;
              });
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                right: 15,
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Coloring.gry9,
              )),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Coloring.gry9,
              )),
              hintText: 'Furnishing status',
              hintStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                height: 3,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk11,
              )),
            ),
          ),
        ),
        // RERA Approved dropdown text field
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35, top: 15),
          child: DropdownButtonFormField(
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk11,
              ),
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            value: _selectedValueReraApprovedBuy,
            items:
                reraApprovedBuy.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedValueReraApprovedBuy = newValue;
              });
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                right: 15,
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Coloring.gry9,
              )),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Coloring.gry9,
              )),
              hintText: 'RERA Approved',
              hintStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                height: 3,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk11,
              )),
            ),
          ),
        ),
        // Must haves/Don’t show
        Padding(
          padding: const EdgeInsets.only(left: 35.0, top: 20),
          child: Text(
            'Must haves/Don’t show',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Coloring.ble4,
            )),
          ),
        ),
        // must have
        // new home
        Container(
          padding:
              const EdgeInsets.only(left: 35.0, right: 35, bottom: 10, top: 10),
          child: TextFormField(
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Coloring.blk11,
            )),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Must have',
              labelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Coloring.blk11,
              )),
              floatingLabelAlignment: FloatingLabelAlignment.start,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: 'New Home',
              hintStyle: GoogleFonts.poppins(
                textStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.gry10,
                )),
              ),
              contentPadding: const EdgeInsets.only(right: 15, top: 10),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloring.gry11,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloring.gry11,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloring.gry11,
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
        // must have
        // none selected
        Container(
          padding:
              const EdgeInsets.only(left: 35.0, right: 35, bottom: 18, top: 10),
          child: TextFormField(
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Coloring.blk11,
            )),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Must have',
              labelStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Coloring.blk11,
              )),
              floatingLabelAlignment: FloatingLabelAlignment.start,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: 'None Selected',
              hintStyle: GoogleFonts.poppins(
                textStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.gry10,
                )),
              ),
              contentPadding: const EdgeInsets.only(right: 15, top: 10),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloring.gry11,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloring.gry11,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Coloring.gry11,
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
      ],
    );
  }

  // to show buy screen
  buy() {
    return SingleChildScrollView(
      child: Form(
        key: _formKeyBuy,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search radius text field
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 62,
                    width: 270,
                    padding: const EdgeInsets.only(left: 30, top: 25),
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.gry12,
                      )),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search radius',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry12,
                          )),
                        ),
                        contentPadding:
                            const EdgeInsets.only(left: 20, right: 15),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Coloring.gry11,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Coloring.gry11,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Coloring.gry11,
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
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 10, right: 30),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Coloring.ble5),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Coloring.wte,
                    size: 20,
                  ),
                )
              ],
            ),
            // Search locations or landmark text field
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 62,
                    width: 270,
                    padding: const EdgeInsets.only(left: 30, top: 25),
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Coloring.gry12)),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.search,
                            size: 20,
                            color: Coloring.gry13,
                          ),
                        ),
                        hintText: 'Search up to 2 Localities or Landmarks',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.gry12)),
                        ),
                        contentPadding: const EdgeInsets.only(right: 15),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Coloring.gry11,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Coloring.gry11,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Coloring.gry11,
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
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 10, right: 30),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Coloring.ble5),
                  child: Icon(
                    Icons.location_searching_outlined,
                    color: Coloring.wte,
                    size: 20,
                  ),
                )
              ],
            ),
            // Checkbox
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
              ),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 0.6,
                    child: Checkbox(
                      visualDensity: const VisualDensity(horizontal: -3.8),
                      value: checkBoxValueBuy,
                      onChanged: (value) {
                        setState(() {
                          checkBoxValueBuy = value!;
                        });
                      },
                      activeColor: Coloring.ble5,
                    ),
                  ),
                  Text(
                    'Include nearby properties',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk12,
                    )),
                  ),
                ],
              ),
            ),
            // property type
            // dropDownTextField detached
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35, top: 15),
              child: DropdownButtonFormField(
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry14,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                value: _selectedValuePropertyTypeBuy,
                items: propertyTypeBuy
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValuePropertyTypeBuy = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    right: 15,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Coloring.gry9,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Coloring.gry9,
                  )),
                  labelText: 'Property Type',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Coloring.blk,
                  )),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Detached',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    height: 3,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry14,
                  )),
                ),
              ),
            ),
            // Added to site
            // dropDownTextField anytime
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35, top: 25),
              child: DropdownButtonFormField(
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry14,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                value: _selectedValueAddedToSiteBuy,
                items: addedToSiteBuy
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValueAddedToSiteBuy = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    right: 15,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Coloring.gry9,
                  )),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Coloring.gry9,
                  )),
                  labelText: 'Added to site',
                  labelStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Coloring.blk,
                  )),
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: 'Anytime',
                  hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    height: 3,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry14,
                  )),
                ),
              ),
            ),
            // BHK Type
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 25, bottom: 15),
              child: Text(
                'BHK Type',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk11,
                )),
              ),
            ),
            // BHK Type Grid View Builder
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: GridView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2.5,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10),
                itemCount: bhkTypesBuy.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        bhkTypesBuy[index].isSelectBhk =
                            !bhkTypesBuy[index].isSelectBhk;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                          color: (bhkTypesBuy[index].isSelectBhk)
                              ? Coloring.ble6
                              : Coloring.wte4,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                                color: Coloring.blk10,
                                offset: const Offset(0, 0),
                                blurRadius: 4,
                                blurStyle: BlurStyle.outer)
                          ]),
                      child: Text(
                        bhkTypesBuy[index].bhkType,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: (bhkTypesBuy[index].isSelectBhk)
                              ? Coloring.wte
                              : Coloring.blk,
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //       padding: const EdgeInsets.only(
            //         left: 20,
            //         top: 10,
            //         bottom: 10,
            //         right: 20,
            //       ),
            //       decoration: BoxDecoration(
            //           color: Coloring.ble6,
            //           borderRadius: BorderRadius.circular(4),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Coloring.blk10,
            //                 offset: const Offset(0, 0),
            //                 blurRadius: 4,
            //                 blurStyle: BlurStyle.outer)
            //           ]),
            //       child: Text(
            //         'Select price',
            //         style: GoogleFonts.poppins(
            //             textStyle: TextStyle(
            //                 decoration: TextDecoration.none,
            //                 fontSize: 10,
            //                 fontWeight: FontWeight.w500,
            //                 color: Coloring.wte)),
            //       ),
            //     ),
            //     Container(
            //       padding: const EdgeInsets.only(
            //         left: 20,
            //         top: 10,
            //         bottom: 10,
            //         right: 20,
            //       ),
            //       decoration: BoxDecoration(
            //           color: Coloring.ble6,
            //           borderRadius: BorderRadius.circular(4),
            //           boxShadow: [
            //             BoxShadow(
            //                 color: Coloring.blk10,
            //                 offset: const Offset(0, 0),
            //                 blurRadius: 4,
            //                 blurStyle: BlurStyle.outer)
            //           ]),
            //       child: Text(
            //         'Slide to select',
            //         style: GoogleFonts.poppins(
            //             textStyle: TextStyle(
            //                 decoration: TextDecoration.none,
            //                 fontSize: 10,
            //                 fontWeight: FontWeight.w500,
            //                 color: Coloring.wte)),
            //       ),
            //     ),
            //   ],
            // ),
            // Price Range
            // range slider for Price Range
            // price value range slider
            SliderTheme(
              data: SliderThemeData(
                trackHeight: 0.5,
                inactiveTrackColor: Coloring.ble6,
                activeTrackColor: Coloring.ble6,
                thumbColor: Coloring.ble3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, bottom: 10, right: 35, left: 35),
                    child: GestureDetector(
                      onTap: () {
                        _showMyDialogBuy();
                      },
                      child: Text(
                        "Price Range : £$startPriceRangeValueBuy to £$endPriceRangeValueBuy",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk11,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0, right: 15),
                    child: RangeSlider(
                      min: 0,
                      max: 100000000,
                      values: RangeValues(
                        startPriceRangeValueBuy.toDouble(),
                        endPriceRangeValueBuy.toDouble(),
                      ),
                      onChanged: (RangeValues values) {
                        if (values.start <= values.end) {
                          setState(() {
                            startPriceRangeValueBuy = values.start.toInt();
                            endPriceRangeValueBuy = values.end.toInt();
                            startValuePriceBuyController.text =
                                startPriceRangeValueBuy.toString();
                            endValuePriceBuyController.text =
                                endPriceRangeValueBuy.toString();
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Looking for “Ready to Move” properties?
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35, top: 5),
              child: Text(
                'Looking for “ReadytoMove” properties? ',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk,
                )),
              ),
            ),
            // Looking for “Ready to Move” properties? yes or no
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isYesBuy = !isYesBuy;
                        isNoBuy = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: (isYesBuy) ? Coloring.ble7 : Coloring.wte,
                          border: Border.all(
                            color:
                                (isYesBuy) ? Coloring.lgtBlue1 : Coloring.wte5,
                          )),
                      child: Text(
                        'Yes',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk,
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isNoBuy = !isNoBuy;
                        isYesBuy = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: (isNoBuy) ? Coloring.ble7 : Coloring.wte,
                          border: Border.all(
                            color:
                                (isNoBuy) ? Coloring.lgtBlue1 : Coloring.wte5,
                          )),
                      child: Text(
                        'No',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // add more filters
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 20),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 18),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 7, bottom: 7),
                    decoration: BoxDecoration(
                      color: Coloring.wte6,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: SvgPicture.asset(Assets.bulbFilter),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Looking for something specific?',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Coloring.blk,
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isBuyFilter = !isBuyFilter;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Text(
                            isBuyFilter ? 'Reduce Filters' : 'Add More Filters',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Coloring.otpSelectedBorderColor1,
                            )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            (isBuyFilter) ? buyFilter() : Container()
          ],
        ),
      ),
    );
  }
}

// to show bhk type
class BhkType {
  String bhkType;
  bool isSelectBhk = false;
  BhkType({required this.bhkType});
}
