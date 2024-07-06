import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/Payment/pay.dart';
import 'package:timelines/timelines.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<TransactionProcedure> transactionProcedure = [
    TransactionProcedure(
        image: Assets.fillTransactionDetails,
        subtitle:
            'Provide your beneficiary bank details, and we will setup your account.',
        title: 'Fill Transaction Detail'),
    TransactionProcedure(
        image: Assets.fillTransactionDetails,
        subtitle:
            'Provide your beneficiary bank details, and we will setup your account.',
        title: 'Fill Transaction Detail'),
    TransactionProcedure(
        image: Assets.fillTransactionDetails,
        subtitle:
            'Provide your beneficiary bank details, and we will setup your account.',
        title: 'Fill Transaction Detail'),
  ];
  final List<String> paymentType = ['House Rent', 'House Rent', 'House Rent'];
  final List<String> countryCode = [
    '+91',
    '+44',
    '+41',
    '+97',
  ];
  String? _paymentType;
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coloring.ble14,
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
            'Payment Method',
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // payment type
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'Payment Type',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // drop down text field for payment type
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                child: DropdownButtonFormField(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.gry14,
                    ),
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Coloring.gry14,
                  ),
                  value: _paymentType,
                  items:
                      paymentType.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _paymentType = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(Assets.paymentTypeImage),
                    contentPadding: const EdgeInsets.only(
                      right: 15,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'House Rent',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      height: 4,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk33,
                    )),
                  ),
                ),
              ),
              // your name
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Your Name',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // text field form for your name
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
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
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Your Name',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      height: 3,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk33,
                    )),
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
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
              // Mobile Number
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Mobile Number',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // text field for mobile number
              Container(
                height: 40,
                padding: const EdgeInsets.only(left: 15),
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Coloring.gry11.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    // drop down field for mobile number
                    SizedBox(
                      width: 40,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          iconStyleData: IconStyleData(
                              icon: Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Coloring.blk33,
                            size: 18,
                          )),
                          dropdownStyleData: DropdownStyleData(
                              maxHeight: 100,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              )),
                          isExpanded: true,
                          hint: Text(
                            '+44',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              height: 3,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Coloring.blk33,
                            )),
                          ),
                          items: countryCode
                              .map((String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                        height: 3,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.blk11,
                                      )),
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
                            padding: EdgeInsets.only(right: 0),
                            height: 30,
                            width: 70,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                    // text field for mobile number
                    SizedBox(
                      width: 180,
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
                          floatingLabelAlignment: FloatingLabelAlignment.start,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Enter Mobile Number',
                          hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            height: 3,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk33,
                          )),
                          contentPadding:
                              const EdgeInsets.only(right: 25, bottom: 7),
                          disabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
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
                ),
              ),
              // Email id
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Text(
                  'Email Id',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk,
                  )),
                ),
              ),
              // text field form for email id
              Container(
                height: 40,
                margin: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
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
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Email Id',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      height: 3,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk33,
                    )),
                    contentPadding: const EdgeInsets.only(right: 15, left: 15),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Coloring.gry11.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(15),
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
              // button for get started
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pay(),
                        ));
                  },
                  child: Container(
                    height: 40,
                    margin: const EdgeInsets.only(
                        top: 40, bottom: 30, left: 30, right: 30),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Coloring.ble13,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Get Started',
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
              // 24/7 Instant Transfers
              Container(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: Coloring.gry20,
                    borderRadius: BorderRadius.circular(4)),
                child: ListTile(
                  leading: Image.asset(Assets.paymentMethod1),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '24/7 Instant Transfers',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk,
                        )),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Your payment will be transferred instantly to your landlord’s account*',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 7,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk34,
                        )),
                      ),
                    ],
                  ),
                  trailing: Image.asset(Assets.creditCardPayment),
                ),
              ),
              // Time line builder for Transaction procedure
              Container(
                margin: const EdgeInsets.only(
                    left: 15, right: 15, bottom: 40, top: 20),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Coloring.bg4,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  )
                ], borderRadius: BorderRadius.circular(4)),
                child: FixedTimeline.tileBuilder(
                  theme: TimelineTheme.of(context).copyWith(
                    nodePosition: 0.2,
                  ),
                  mainAxisSize: MainAxisSize.max,
                  builder: TimelineTileBuilder.connected(
                    itemCount: transactionProcedure.length,
                    connectionDirection: ConnectionDirection.before,
                    contentsBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 30, right: 38),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                color: Coloring.bg5.withOpacity(0.3),
                                blurStyle: BlurStyle.outer,
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                              )
                            ]),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(transactionProcedure[index].image),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  transactionProcedure[index].title,
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
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              transactionProcedure[index].subtitle,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk,
                              )),
                            ),
                          ],
                        ),
                      );
                    },
                    connectorBuilder: (context, index, type) {
                      return const SolidLineConnector(
                        color: Colors.black,
                      );
                    },
                    indicatorBuilder: (context, index) {
                      var intt = index + 1;
                      return Column(
                          mainAxisAlignment: MainAxisAlignment
                              .start, // Align indicators to the left
                          children: [
                            ContainerIndicator(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: const CustomGradient1(
                                      child: CircleAvatar(
                                        radius: 20,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    intt.toString(),
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Coloring.wte,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]);
                    },
                    itemExtent: 130.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// to show TransactionProcedure data
class TransactionProcedure {
  String image;
  String title;
  String subtitle;
  TransactionProcedure(
      {required this.image, required this.subtitle, required this.title});
}
