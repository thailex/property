import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  List<ChangePasswords> changePassword = [
    ChangePasswords(name: 'Current Password'),
    ChangePasswords(name: 'New Password'),
    ChangePasswords(name: 'Confirm Password'),
  ];
  bool select = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coloring.ble14,
        leading: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: IconButton(
            icon: Icon(
              Icons.clear,
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
            'Change Password',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 25, bottom: 15),
            child: SizedBox(
              width: 220,
              child: Text(
                'At least 9 characters with uppercase and lowercase letters.',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk25,
                )),
              ),
            ),
          ),
          ListView.builder(
            itemCount: changePassword.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Coloring.gry17.withOpacity(0.5)),
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 8,
                      color: Coloring.otpSelectedBorderColor2,
                    )
                  ],
                ),
                child: TextFormField(
                  obscureText: changePassword[index].isPassword,
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
                    hintText: changePassword[index].name,
                    hintStyle: GoogleFonts.poppins(
                      textStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Coloring.blk26.withOpacity(0.7),
                      )),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        (changePassword[index].isPassword)
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 18,
                        color: Coloring.blk26.withOpacity(0.4),
                      ),
                      onPressed: () {
                        setState(() {
                          changePassword[index].isPassword =
                              !changePassword[index].isPassword;
                        });
                      },
                    ),
                    contentPadding: const EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                    ),
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
              );
            },
          ),
          const Spacer(),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              alignment: Alignment.center,
              width: 290,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Coloring.ble13,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Change Password',
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
        ],
      ),
    );
  }
}

class ChangePasswords {
  String name;
  bool isPassword = false;
  ChangePasswords({required this.name});
}
