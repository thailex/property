import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class PrivacySettings extends StatefulWidget {
  const PrivacySettings({super.key});
  @override
  State<PrivacySettings> createState() => _PrivacySettingsState();
}

class _PrivacySettingsState extends State<PrivacySettings> {
  final ScrollController _controller = ScrollController();
  List<PrivacyNames> privacySettings = [
    PrivacyNames(name: 'Necessary'),
    PrivacyNames(name: 'Personalised experience'),
    PrivacyNames(name: 'Tailored advertising'),
  ];
  bool isCheckBox = false;
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
            'Privacy Settings',
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
        children: [
          SingleChildScrollView(
            controller: _controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cookie preferences
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30, bottom: 30),
                  child: Text(
                    'Cookie preferences',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk,
                    )),
                  ),
                ),
                // list view builder for cookie preferences
                ListView.builder(
                  itemCount: privacySettings.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 45,
                      margin: const EdgeInsets.only(
                          left: 15, right: 30, bottom: 15),
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 5),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Coloring.blk10,
                          blurRadius: 12,
                          blurStyle: BlurStyle.outer,
                          offset: const Offset(0, 4),
                        )
                      ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            privacySettings[index].name,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Coloring.blk,
                            )),
                          ),
                          Transform.scale(
                            scale: 0.7,
                            child: Checkbox(
                              visualDensity:
                                  const VisualDensity(horizontal: -3.8),
                              value: privacySettings[index].isCheck,
                              onChanged: (value) {
                                setState(() {
                                  privacySettings[index].isCheck = value!;
                                });
                              },
                              activeColor: Coloring.ble5,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                // privacy policy notes
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: RichText(
                      text: TextSpan(
                          text:
                              'Thanks for using Pridea.you can use the settings below to accept all cookies which we recommended to give you the best personalized online experience) or to enablespecific categories of cookies you can change your settings of any time.Our ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk25,
                          )),
                          children: [
                        TextSpan(
                          text: 'privacy policy ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gradient2,
                          )),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk25,
                          )),
                        ),
                        TextSpan(
                          text: 'Cookie policy ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.gradient2,
                          )),
                        ),
                        TextSpan(
                          text:
                              ' describes how we use,process,and disclose your personal information.',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk25,
                          )),
                        ),
                      ])),
                ),
              ],
            ),
          ),
          // bottom button for save
          Expanded(
            child: Center(
              child: Container(
                height: 40,
                margin: const EdgeInsets.only(
                    top: 10, bottom: 15, left: 30, right: 30),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Coloring.ble13,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'Save',
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
        ],
      ),
    );
  }
}

// to show Privacy Settings data
class PrivacyNames {
  String name;
  bool isCheck = false;

  PrivacyNames({required this.name});
}
