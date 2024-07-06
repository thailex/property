import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Authentication/signup.dart';
import 'package:prides_sales_and_lettings/Authentication/generate_otp.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/bottomnavbar.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isPassword = false;
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
                                'Login Now!',
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
                    // Username textForm Field
                    Container(
                      padding: const EdgeInsets.only(
                          left: 45.5, right: 45.5, top: 25),
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
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.person,
                            color: Coloring.gradient4,
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
                            borderSide: BorderSide(color: Coloring.ble2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Coloring.ble2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Coloring.ble2),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Coloring.rd),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Required Field';
                          }
                          if (value == 'Bots44') {
                            return null;
                          }
                          return 'Username is Incorrect';
                        },
                      ),
                    ),
                    // password textForm Field
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
                              color: Coloring.gradient4,
                            ),
                          ),
                          hintText: 'Password',
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
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Coloring.rd),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Required Field';
                          }
                          if (value == 'Bots44') {
                            return null;
                          }
                          return 'Password is Incorrect';
                        },
                      ),
                    ),
                    // Remember me
                    Padding(
                      padding: EdgeInsets.only(
                          left: 50,
                          right: MediaQuery.of(context).size.width / 7,
                          top: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isRememberMe = !isRememberMe;
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: 10.5,
                                width: 10.5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Coloring.lgtGrn)),
                                child: (isRememberMe)
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
                              'Remember me',
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
                    ),
                    // Forget password
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GetOtp(),
                            ));
                      },
                      child: Padding(
                          padding: const EdgeInsets.only(left: 50, top: 15),
                          child: RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: Text(
                                  'Forget ',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk,
                                  )),
                                ),
                              ),
                              WidgetSpan(
                                child: CustomGradient(
                                  child: Text(
                                    'Password?',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Coloring.gradient4,
                                    )),
                                  ),
                                ),
                              ),
                            ]),
                          )),
                    ),
                    // Login Button
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BottomNavBar(),
                              ));
                          // if (_formKey.currentState!.validate()) {
                          //   setState(() {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => const BottomNavBar(),
                          //         ));
                          //   });
                          // }
                        },
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
                            'Login',
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
                    // don't have an account sign up
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width / 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Coloring.blk,
                            )),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUp(),
                                  ));
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 4, bottom: 4),
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
                                'Sign Up',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.wte,
                                )),
                              ),
                            ),
                          )
                        ],
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
