import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Authentication/setpassword.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class GetOtp extends StatefulWidget {
  const GetOtp({super.key});
  @override
  State<GetOtp> createState() => _GetOtpState();
}

class _GetOtpState extends State<GetOtp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var currentText;
  bool isGetUpdatesOnWhatsapp = false;
  bool isGenerateOtp = false;
  bool isIHavePassword = false;
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
                    //OTP Verification
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: CustomGradient(
                        child: Text(
                          'OTP VERIFICATION',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Coloring.blk,
                          )),
                        ),
                      ),
                    ),
                    // mobile no or email
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, top: 10, right: 30),
                      child: Text(
                        'An authentication code has been send to manivannan****@gmail.com or your mobile number +91****89',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Coloring.blk,
                        )),
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
                    const SizedBox(
                      height: 30,
                    ),
                    // Continue  Button
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SetPassword(),
                            ));
                      },
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 12,
                            right: MediaQuery.of(context).size.width / 12,
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
      ),
    );
  }
}
