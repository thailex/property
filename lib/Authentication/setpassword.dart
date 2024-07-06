import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Authentication/login.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isPassword = false;
  bool isPassword1 = false;
  bool isRememberMe = false;
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
                                'Set Password!',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Coloring.wte,
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Set Password
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, bottom: 10),
                      child: CustomGradient(
                        child: Text(
                          'Set Password',
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
                    // Enter password textForm Field
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
                        obscureText: isPassword,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                            child: Icon(
                              (isPassword)
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 18,
                              color: Coloring.gradient4,
                            ),
                          ),
                          hintText: 'Enter New Password',
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
                    // confirm password textForm Field
                    Container(
                      padding: const EdgeInsets.only(
                          left: 45.5, right: 45.5, top: 15, bottom: 40),
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
                        obscureText: isPassword1,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPassword1 = !isPassword1;
                              });
                            },
                            child: Icon(
                              (isPassword1)
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 18,
                              color: Coloring.gradient4,
                            ),
                          ),
                          hintText: 'Confirm Password',
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
                    // Continue Button
                    GestureDetector(
                      onTap: () {
                        showDialogBox();
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

  // to showDialogBox for registration successful
  showDialogBox() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Image(image: AssetImage('assets/tickgif.gif')),
              CustomGradient(
                child: Text(
                  'Congratulations',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Your account is ready to use',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogIn(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, bottom: 8, top: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Coloring.gradient1,
                      Coloring.gradient2,
                      Coloring.gradient3,
                      Coloring.gradient4,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: Text(
                    'Back to Home',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
