import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class Rent extends StatefulWidget {
  const Rent({super.key});

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> {
  final TextEditingController startValuePriceRentController =
      TextEditingController();
  final TextEditingController endValuePriceRentController =
      TextEditingController();
  final TextEditingController startValueAreaRentController =
      TextEditingController();
  final TextEditingController endValueAreaRentController =
      TextEditingController();
  bool isRentFilter = false;
  bool isBachelor = false;
  bool isFamily = false;
  bool isImmediate = false;
  bool isWithIn15Days = false;
  bool isWithIn30Days = false;
  bool isAfter30Days = false;
  String? _selectedValuePropertyTypeRent;
  String? _selectedValueAddedToSiteRent;
  String? _selectedValueAmenitiesRent;
  String? _selectedValueFurnishingStatusRent;
  String? _selectedValueReraApprovedRent;
  final List<String> propertyTypeRent = [
    'property 1',
    'property 2',
    'property 3'
  ];
  final List<String> addedToSiteRent = [
    'addedToSite 1',
    'addedToSite 2',
    'addedToSite 3'
  ];
  final List<String> amenitiesRent = [
    'amenities 1',
    'amenities 2',
    'amenities 3'
  ];
  final List<String> furnishingStatusRent = [
    'furnishingStatus 1',
    'furnishingStatus 2',
    'furnishingStatus 3'
  ];
  final List<String> reraApprovedRent = [
    'reraApproved 1',
    'reraApproved 2',
    'reraApproved 3'
  ];
  int startPriceRangeValueRent = 0;
  int endPriceRangeValueRent = 100000000;
  int startSqFtRent = 0;
  int endSqFtRent = 4000;
  bool isYesRent = true;
  bool isNoRent = false;
  bool checkBoxValueRent = false;
  List<BhkType> bhkTypesRent = [
    BhkType(bhkType: '1 RK'),
    BhkType(bhkType: '1 BHK'),
    BhkType(bhkType: '2 BHK'),
    BhkType(bhkType: '3 BHK'),
    BhkType(bhkType: '4 BHK'),
    BhkType(bhkType: '4+ BHK'),
  ];
  final GlobalKey<FormState> _formKeyRent = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeyRentPrice = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKeyAreaRent = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    startValuePriceRentController.text = startPriceRangeValueRent.toString();
    endValuePriceRentController.text = endPriceRangeValueRent.toString();
    startValueAreaRentController.text = startSqFtRent.toString();
    endValueAreaRentController.text = endSqFtRent.toString();
  }

  Future<void> _showMyDialogRent() async {
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
              key: _formKeyRentPrice,
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(right: 55, bottom: 10, top: 10),
                    child: TextFormField(
                      controller: startValuePriceRentController,
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
                        if (int.parse(value) > endPriceRangeValueRent) {
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
                      controller: endValuePriceRentController,
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
                        if (int.parse(value) < startPriceRangeValueRent) {
                          return 'Start value must be less than or equal to end value';
                        }
                        if (int.parse(value) > endPriceRangeValueRent) {
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
                if (_formKeyRentPrice.currentState?.validate() ?? false) {
                  setState(() {
                    startPriceRangeValueRent =
                        int.parse(startValuePriceRentController.text);
                    endPriceRangeValueRent =
                        int.parse(endValuePriceRentController.text);
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

  Future<void> _showMyDialogAreaRent() async {
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
              key: _formKeyAreaRent,
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(right: 55, bottom: 10, top: 10),
                    child: TextFormField(
                      controller: startValueAreaRentController,
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
                        if (int.parse(value) > endSqFtRent) {
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
                      controller: endValueAreaRentController,
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
                        if (int.parse(value) < startSqFtRent) {
                          return 'Start value must be less than or equal to end value';
                        }
                        if (int.parse(value) > endSqFtRent) {
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
                if (_formKeyAreaRent.currentState?.validate() ?? false) {
                  setState(() {
                    startSqFtRent =
                        int.parse(startValueAreaRentController.text);
                    endSqFtRent = int.parse(endValueAreaRentController.text);
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
    return rent();
  }

  // to show add more filter for rent
  rentFilter() {
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
                      _showMyDialogAreaRent();
                    },
                    child: Row(
                      children: [
                        Text(
                          startSqFtRent.toString(),
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
                            fontSize: 12,
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
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(68, 68, 68, 1),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          endSqFtRent.toString(),
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
                            fontSize: 12,
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
                        startSqFtRent.toDouble(), endSqFtRent.toDouble()),
                    onChanged: (RangeValues value) {
                      if (value.start <= value.end) {
                        setState(() {
                          startSqFtRent = value.start.toInt();
                          endSqFtRent = value.end.toInt();
                          startValueAreaRentController.text =
                              startSqFtRent.toString();
                          endValueAreaRentController.text =
                              endSqFtRent.toString();
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
            value: _selectedValueAmenitiesRent,
            items: amenitiesRent.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedValueAmenitiesRent = newValue;
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
            value: _selectedValueFurnishingStatusRent,
            items: furnishingStatusRent
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedValueFurnishingStatusRent = newValue;
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
            value: _selectedValueReraApprovedRent,
            items:
                reraApprovedRent.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedValueReraApprovedRent = newValue;
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

  // to show rent screen
  rent() {
    return SingleChildScrollView(
      child: Form(
        key: _formKeyRent,
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
                    color: Coloring.ble5,
                  ),
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
                        color: Coloring.gry12,
                      )),
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
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gry12,
                          )),
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
                    color: Coloring.ble5,
                  ),
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
                      value: checkBoxValueRent,
                      onChanged: (value) {
                        setState(() {
                          checkBoxValueRent = value!;
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
                value: _selectedValuePropertyTypeRent,
                items: propertyTypeRent
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValuePropertyTypeRent = newValue;
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
                itemCount: bhkTypesRent.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        bhkTypesRent[index].isSelectBhk =
                            !bhkTypesRent[index].isSelectBhk;
                      });
                    },
                    child: Container(
                      width: 80,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 8, bottom: 8),
                      decoration: BoxDecoration(
                          color: (bhkTypesRent[index].isSelectBhk)
                              ? Coloring.ble2
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
                        bhkTypesRent[index].bhkType,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: (bhkTypesRent[index].isSelectBhk)
                              ? Coloring.wte
                              : Coloring.blk,
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Price Range
            // range slider for Price Range
            SliderTheme(
                data: SliderThemeData(
                  trackHeight: 0.5,
                  inactiveTrackColor: Coloring.ble2,
                  activeTrackColor: Coloring.ble2,
                  thumbColor: Coloring.ble2,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 35, right: 35, top: 25),
                      child: GestureDetector(
                        onTap: () {
                          _showMyDialogRent();
                        },
                        child: Text(
                          "Price Range : £$startPriceRangeValueRent to £$endPriceRangeValueRent",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk11,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0, right: 15),
                      child: RangeSlider(
                        min: 0,
                        max: 100000000,
                        values: RangeValues(startPriceRangeValueRent.toDouble(),
                            endPriceRangeValueRent.toDouble()),
                        onChanged: (RangeValues values) {
                          if (values.start <= values.end) {
                            setState(() {
                              startPriceRangeValueRent = values.start.toInt();
                              endPriceRangeValueRent = values.end.toInt();
                              startValuePriceRentController.text =
                                  startPriceRangeValueRent.toString();
                              endValuePriceRentController.text =
                                  endPriceRangeValueRent.toString();
                            });
                          }
                        },
                      ),
                    ),
                  ],
                )),
            // Added to site
            // dropDownTextField anytime
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35, top: 10),
              child: DropdownButtonFormField(
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.gry14,
                  ),
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                value: _selectedValueAddedToSiteRent,
                items: addedToSiteRent
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValueAddedToSiteRent = newValue;
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
            // Tenants preferred
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 25, bottom: 15),
              child: Text(
                'Tenants preferred',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk11,
                )),
              ),
            ),
            // Tenants preferred
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isBachelor = !isBachelor;
                        isFamily = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: (isBachelor) ? Coloring.ble8 : Coloring.wte7,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Coloring.blk13,
                              offset: const Offset(0, 0),
                              blurRadius: 2,
                              blurStyle: BlurStyle.outer,
                            )
                          ]),
                      child: Text(
                        'Bachelor',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: (isBachelor) ? Coloring.wte : Coloring.blk14,
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFamily = !isFamily;
                        isBachelor = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: (isFamily) ? Coloring.ble8 : Coloring.wte7,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Coloring.wte7,
                              offset: const Offset(0, 0),
                              blurRadius: 2,
                              blurStyle: BlurStyle.outer,
                            )
                          ]),
                      child: Text(
                        'Family',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: (isFamily) ? Coloring.wte : Coloring.blk14,
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Availability
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 25, bottom: 15),
              child: Text(
                'Availability :',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk11,
                )),
              ),
            ),
            // Availability
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isImmediate = !isImmediate;
                                  isAfter30Days = false;
                                  isWithIn15Days = false;
                                  isWithIn30Days = false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15, right: 15),
                                decoration: BoxDecoration(
                                    color: (isImmediate)
                                        ? Coloring.ble8
                                        : Coloring.wte7,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Coloring.blk13,
                                        offset: const Offset(0, 0),
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.outer,
                                      )
                                    ]),
                                child: Text(
                                  'Immediate',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: (isImmediate)
                                        ? Coloring.wte
                                        : Coloring.blk14,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isWithIn15Days = !isWithIn15Days;
                            isAfter30Days = false;
                            isImmediate = false;
                            isWithIn30Days = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: (isWithIn15Days)
                                  ? Coloring.ble8
                                  : Coloring.wte7,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Coloring.wte7,
                                  offset: const Offset(0, 0),
                                  blurRadius: 2,
                                  blurStyle: BlurStyle.outer,
                                )
                              ]),
                          child: Text(
                            'Within 15 days',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: (isWithIn15Days)
                                  ? Coloring.wte
                                  : Coloring.blk14,
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isWithIn30Days = !isWithIn30Days;
                                  isAfter30Days = false;
                                  isWithIn15Days = false;
                                  isImmediate = false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, left: 15, right: 15),
                                decoration: BoxDecoration(
                                    color: (isWithIn30Days)
                                        ? Coloring.ble8
                                        : Coloring.wte7,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Coloring.blk13,
                                        offset: const Offset(0, 0),
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.outer,
                                      )
                                    ]),
                                child: Text(
                                  'Within 30 days',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: (isWithIn30Days)
                                        ? Coloring.wte
                                        : Coloring.blk14,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isAfter30Days = !isAfter30Days;
                            isWithIn15Days = false;
                            isImmediate = false;
                            isWithIn30Days = false;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: (isAfter30Days)
                                  ? Coloring.ble8
                                  : Coloring.wte7,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Coloring.wte7,
                                  offset: const Offset(0, 0),
                                  blurRadius: 2,
                                  blurStyle: BlurStyle.outer,
                                )
                              ]),
                          child: Text(
                            'After 30 days',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: (isAfter30Days)
                                  ? Coloring.wte
                                  : Coloring.blk14,
                            )),
                          ),
                        ),
                      ),
                    ],
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
                            isRentFilter = !isRentFilter;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Text(
                            isRentFilter ? 'Reduce Filter' : 'Add More Filters',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
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
            (isRentFilter) ? rentFilter() : Container()
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
