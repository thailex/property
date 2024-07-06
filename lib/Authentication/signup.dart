import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Authentication/generate_otp.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isGetUpdatesOnWhatsapp = false;
  String? selectedValue;
  final List<String> countryCode = [
    '+44',
    '+94',
    '+91',
    '+43',
    '+49',
    '+46',
  ];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Heading
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        SvgPicture.asset(
                          Assets.SignUp,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome Back',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Coloring.wte,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Sign Up!',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Coloring.wte,
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // // Resend Otp
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 50.0, top: 3),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: [
                    //       Text(
                    //         'RESEND OTP',
                    //         style: GoogleFonts.poppins(
                    //             textStyle: const TextStyle(
                    //           decoration: TextDecoration.none,
                    //           fontSize: 8,
                    //           fontWeight: FontWeight.w500,
                    //           color: Color.fromRGBO(64, 68, 102, 1),
                    //         )),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Username textForm Field
                    // user name text field
                    Container(
                      padding: const EdgeInsets.only(
                          left: 45.5, right: 45.5, top: 25),
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Coloring.blk37)),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.person,
                            color: Color.fromRGBO(54, 66, 104, 1),
                          ),
                          hintText: 'User Name',
                          hintStyle: GoogleFonts.poppins(
                            textStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(
                                35,
                                34,
                                34,
                                1,
                              ),
                            )),
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 15, right: 15),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(54, 66, 104, 1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(54, 66, 104, 1)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(54, 66, 104, 1)),
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
                    // email textForm Field
                    Container(
                      padding: const EdgeInsets.only(
                          left: 45.5, right: 45.5, top: 15),
                      child: TextFormField(
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(
                            35,
                            34,
                            34,
                            1,
                          ),
                        )),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.email_outlined,
                            color: Color.fromRGBO(54, 66, 104, 1),
                          ),
                          hintText: 'Email Id',
                          hintStyle: GoogleFonts.poppins(
                            textStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(
                                35,
                                34,
                                34,
                                1,
                              ),
                            )),
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 15, bottom: 15, left: 15, right: 15),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(54, 66, 104, 1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(54, 66, 104, 1)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(54, 66, 104, 1)),
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
                    // SignUp form with phone number
                    Column(
                      children: [
                        // Enter Phone number to Continue
                        Container(
                          height: 45,
                          padding: const EdgeInsets.only(left: 10),
                          margin: const EdgeInsets.only(
                              top: 30, left: 45.5, right: 45.5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Coloring.otpContainer),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4),
                                  topRight: Radius.circular(4))),
                          child: Row(
                            children: [
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    // dropDownButton
                                    SizedBox(
                                      width: 40,
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2<String>(
                                          iconStyleData: IconStyleData(
                                              icon: Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: Coloring.gry,
                                            size: 15,
                                          )),
                                          dropdownStyleData: DropdownStyleData(
                                              maxHeight: 100,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.white,
                                              )),
                                          isExpanded: true,
                                          hint: Text(
                                            '+44',
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color:
                                                  Color.fromRGBO(57, 54, 54, 1),
                                            )),
                                          ),
                                          items: countryCode
                                              .map((String item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style:
                                                          GoogleFonts.poppins(
                                                              textStyle:
                                                                  const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color.fromRGBO(
                                                            57, 54, 54, 1),
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
                                          buttonStyleData:
                                              const ButtonStyleData(
                                            padding: EdgeInsets.only(right: 5),
                                            height: 30,
                                            width: 74,
                                          ),
                                          menuItemStyleData:
                                              const MenuItemStyleData(
                                            height: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // VerticalDivider
                                    SizedBox(
                                      width: 1,
                                      child: VerticalDivider(
                                        color: Coloring.otpContainer
                                            .withOpacity(0.5),
                                      ),
                                    ),
                                    // Text Field
                                    SizedBox(
                                      width: 130,
                                      child: TextFormField(
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(
                                            35,
                                            34,
                                            34,
                                            1,
                                          ),
                                        )),
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          contentPadding: const EdgeInsets.only(
                                              left: 10, bottom: 5),
                                          hintText: 'Enter Phone Number',
                                          hintStyle: GoogleFonts.poppins(
                                            textStyle: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                35,
                                                34,
                                                34,
                                                1,
                                              ),
                                            )),
                                          ),
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
                              )
                            ],
                          ),
                        ),
                        // Get Updates on Whatsapp
                        Container(
                          height: 45,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          margin:
                              const EdgeInsets.only(left: 45.5, right: 45.5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Coloring.otpContainer),
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(4)),
                              color: Coloring.gry.withOpacity(0.2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Get Updates On',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                    )),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(Assets.whatsappLogo),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Whatsapp',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(51, 51, 51, 1),
                                        )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isGetUpdatesOnWhatsapp =
                                        !isGetUpdatesOnWhatsapp;
                                  });
                                },
                                icon: (isGetUpdatesOnWhatsapp)
                                    ? const Icon(
                                        Icons.toggle_on,
                                        color: Color.fromRGBO(95, 176, 74, 1),
                                        size: 30,
                                      )
                                    : const Icon(
                                        Icons.toggle_off,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    // Create Account Button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GetOtp(),
                            ));
                      },
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 8,
                            right: MediaQuery.of(context).size.width / 8,
                            top: MediaQuery.of(context).size.width / 12,
                          ),
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Coloring.gradient1,
                                Coloring.gradient2,
                                Coloring.gradient3,
                                Coloring.gradient4,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            'Create Account',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Coloring.wte,
                            )),
                          ),
                        ),
                      ),
                    ),
                    // terms and conditions
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 6),
                      child: Center(
                        child: Text(
                          'By continuing,you agree to our Terms & Conditions',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(62, 62, 62, 1),
                          )),
                        ),
                      ),
                    ),
                    // terms and conditions
                    Center(
                      child: Text(
                        'For any issue/query please email hello@realestate.in',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(62, 62, 62, 1),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // SignUpBuildingImage
            Container(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: SvgPicture.asset(Assets.SignUpBuildingImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
