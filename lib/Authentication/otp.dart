import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/bottomnavbar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var currentText;
  bool isGetUpdatesOnWhatsapp = false;
  bool isGenerateOtp = false;
  bool isIHavePassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Heading login
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      SvgPicture.asset(Assets.SignUp),
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
                              'Enter OTP!',
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
                  // Enter OTP or Password TextField
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Text(
                      'Enter OTP or Password',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk,
                      )),
                    ),
                  ),
                  // Enter OTP or Password TextField
                  Column(
                    children: [
                      // Enter Phone number to Continue
                      Container(
                        padding: const EdgeInsets.only(left: 13),
                        margin:
                            const EdgeInsets.only(top: 10, left: 50, right: 50),
                        decoration: BoxDecoration(
                            border: Border.all(color: Coloring.otpContainer),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4))),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Text(
                                '+44-',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.blk1,
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Form(
                                key: _formKey,
                                child: TextFormField(
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Coloring.blk1)),
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    hintText: '7911123456',
                                    hintStyle: GoogleFonts.poppins(
                                      textStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(65, 63, 63, 1),
                                      )),
                                    ),
                                    contentPadding: const EdgeInsets.only(
                                      left: 5,
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
                            ),
                          ],
                        ),
                      ),
                      // Get Updates on Whatsapp
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        margin: const EdgeInsets.only(left: 50, right: 50),
                        decoration: BoxDecoration(
                            border: Border.all(color: Coloring.otpContainer),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4)),
                            color: Coloring.gry.withOpacity(0.2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
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
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isGetUpdatesOnWhatsapp =
                                      !isGetUpdatesOnWhatsapp;
                                });
                              },
                              icon: (isGetUpdatesOnWhatsapp)
                                  ? Icon(
                                      Icons.toggle_on,
                                      color: Coloring.grn,
                                      size: 30,
                                    )
                                  : Icon(
                                      Icons.toggle_off,
                                      color: Coloring.gry,
                                      size: 30,
                                    ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  // Generate Otp or I have Password
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30.0, right: 30, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Generate Otp
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isGenerateOtp = !isGenerateOtp;
                              isIHavePassword = false;
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 7.5,
                                  width: 7.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border:
                                          Border.all(color: Coloring.lgtGrn)),
                                  child: (isGenerateOtp)
                                      ? Container(
                                          height: 4.5,
                                          width: 4.5,
                                          decoration: BoxDecoration(
                                            color: Coloring.lgtGrn,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        )
                                      : Container()),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Generate OTP',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.blk,
                                )),
                              ),
                            ],
                          ),
                        ),
                        // I have Password
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isIHavePassword = !isIHavePassword;
                              isGenerateOtp = false;
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 7.5,
                                  width: 7.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border:
                                          Border.all(color: Coloring.lgtGrn)),
                                  child: (isIHavePassword)
                                      ? Container(
                                          height: 4.5,
                                          width: 4.5,
                                          decoration: BoxDecoration(
                                            color: Coloring.lgtGrn,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                        )
                                      : Container()),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'I have a password',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.blk,
                                )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // Otp TextField
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, right: 35),
                    child: PinCodeTextField(
                      keyboardType: TextInputType.number,
                      appContext: context,
                      length: 6,
                      onChanged: (String value) {
                        setState(() {
                          currentText = value;
                        });
                      },
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeColor: Coloring.gry1,
                        inactiveColor: Coloring.gry1,
                        selectedColor: Coloring.otpSelectedBorderColor,
                      ),
                      textStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Coloring.otpSelectedBorderColor,
                      )),
                    ),
                  ),
                  // Resend Otp
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Text(
                      'Resend in 00:29',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Coloring.otpSelectedBorderColor1,
                      )),
                    ),
                  ),
                  // Continue Login Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNavBar(),
                          ));
                    },
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(
                          left: 35,
                          right: 35,
                          top: 50,
                        ),
                        width: 280,
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
                          'Continue',
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
                  // Terms & Conditions
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 6),
                    child: Center(
                      child: Text(
                        'By continuing,you agree to our Terms & Conditions',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk2,
                        )),
                      ),
                    ),
                  ),
                  // Terms & Conditions
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
          )
        ],
      ),
    );
  }
}
