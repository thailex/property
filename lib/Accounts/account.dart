import 'dart:ui';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Accounts/change_password.dart';
import 'package:prides_sales_and_lettings/Accounts/delete_account.dart';
import 'package:prides_sales_and_lettings/Accounts/faqs.dart';
import 'package:prides_sales_and_lettings/Accounts/news_letter.dart';
import 'package:prides_sales_and_lettings/Accounts/privacy_policy.dart';
import 'package:prides_sales_and_lettings/Accounts/privacy_settings.dart';
import 'package:prides_sales_and_lettings/Accounts/terms_of_use.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Authentication/login.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String? selectedValue;
  final List<String> emailId = [
    'manikandan@gmail.com',
    'manikandan1@gmail.com',
    'manikandan2@gmail.com',
    'manikandan3@gmail.com',
  ];
  List<Legal> legal = [
    Legal(name: 'Privacy Policy', image: Assets.privacyPolicy),
    Legal(name: 'Terms of Use', image: Assets.termsUse),
    Legal(name: 'Privacy Settings', image: Assets.privacySettings),
  ];
  List<Support> support = [
    Support(name: 'Send us feedback', image: Assets.sendUsFeedBack),
    Support(name: 'FAQs', image: Assets.Faq),
  ];
  List<Settings> settings = [
    Settings(name: 'Change Password', image: Assets.passwordLock),
    Settings(name: 'Delete Account', image: Assets.deleteAccount),
    Settings(name: 'Sign out', image: Assets.signOutCircleSvgRepoCom),
  ];
  List<ContactPreferences> contactPreferences = [
    ContactPreferences(name: 'Saved searches & alerts', image: Assets.save),
    ContactPreferences(name: 'NewsLetter', image: Assets.newsLetter),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 80,
      //   backgroundColor: Coloring.ble14,
      //   leading: const CircleAvatar(
      //     radius: 20,
      //     backgroundImage: AssetImage('assets/profilePicture.png'),
      //   ),
      //   title: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       Text(
      //         'Account',
      //         style: GoogleFonts.poppins(
      //             textStyle: TextStyle(
      //           decoration: TextDecoration.none,
      //           fontSize: 16,
      //           fontWeight: FontWeight.w500,
      //           color: Coloring.wte,
      //         )),
      //       ),
      //       DropdownButtonHideUnderline(
      //         child: DropdownButton2<String>(
      //           iconStyleData: IconStyleData(
      //               icon: Icon(
      //             Icons.keyboard_arrow_down,
      //             size: 10,
      //             color: Coloring.wte,
      //           )),
      //           dropdownStyleData: DropdownStyleData(
      //               width: 200,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(15),
      //                 color: Coloring.blk,
      //               )),
      //           isExpanded: true,
      //           hint: Text(
      //             overflow: TextOverflow.ellipsis,
      //             'Pridearealestate@gmail.com',
      //             style: GoogleFonts.poppins(
      //                 textStyle: TextStyle(
      //               fontSize: 10,
      //               fontWeight: FontWeight.w400,
      //               color: Coloring.wte,
      //             )),
      //           ),
      //           items: emailId
      //               .map((String item) => DropdownMenuItem<String>(
      //                     value: item,
      //                     child: Text(
      //                       overflow: TextOverflow.ellipsis,
      //                       item,
      //                       style: GoogleFonts.poppins(
      //                           textStyle: TextStyle(
      //                         fontSize: 10,
      //                         fontWeight: FontWeight.w400,
      //                         color: Coloring.wte,
      //                       )),
      //                     ),
      //                   ))
      //               .toList(),
      //           value: selectedValue,
      //           onChanged: (String? value) {
      //             setState(() {
      //               selectedValue = value;
      //             });
      //           },
      //           buttonStyleData: const ButtonStyleData(
      //             width: 0,
      //             padding: EdgeInsets.only(right: 70),
      //             height: 20,
      //           ),
      //           menuItemStyleData: const MenuItemStyleData(
      //             height: 40,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Coloring.ble14,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Container(
          color: Coloring.ble14,
          child: ListTile(
              contentPadding: const EdgeInsets.only(left: 30),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(Assets.profilePicture),
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Account',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Coloring.wte,
                  )),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    iconStyleData: IconStyleData(
                        icon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 10,
                      color: Coloring.wte,
                    )),
                    dropdownStyleData: DropdownStyleData(
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Coloring.blk,
                        )),
                    isExpanded: true,
                    hint: Text(
                      overflow: TextOverflow.ellipsis,
                      'Pridearealestate@gmail.com',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.wte,
                      )),
                    ),
                    items: emailId
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                item,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.wte,
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
                      width: 0,
                      padding: EdgeInsets.only(right: 60),
                      height: 20,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                  ),
                ),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Legal
            Container(
              margin: const EdgeInsets.only(
                  left: 30, right: 30, bottom: 35, top: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Coloring.gry16.withOpacity(0.4),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer,
                      color: Coloring.otpSelectedBorderColor2,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Legal',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk24,
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: legal.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          (index == 2)
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PrivacySettings(),
                                  ))
                              : (index == 1)
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TermsOfUse(),
                                      ))
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PrivacyPolicy()));
                        },
                        minLeadingWidth: 0,
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        visualDensity:
                            const VisualDensity(horizontal: -3, vertical: -4),
                        leading: SvgPicture.asset(legal[index].image),
                        title: Text(
                          legal[index].name,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk24,
                          )),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk24,
                          size: 12,
                        ),
                        minVerticalPadding: 0,
                      );
                    },
                  )
                ],
              ),
            ),
            // Support
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 35),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Coloring.gry16.withOpacity(0.4),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer,
                      color: Coloring.otpSelectedBorderColor2,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Support',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk24,
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: support.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          (index == 1)
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Faqs(),
                                  ))
                              : Container();
                        },
                        minLeadingWidth: 0,
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        visualDensity:
                            const VisualDensity(horizontal: -3, vertical: -4),
                        leading: SvgPicture.asset(support[index].image),
                        title: Text(
                          support[index].name,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk24,
                          )),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk24,
                          size: 12,
                        ),
                        minVerticalPadding: 0,
                      );
                    },
                  )
                ],
              ),
            ),
            // Contact Preferences
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 35),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Coloring.gry16.withOpacity(0.4),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer,
                      color: Coloring.otpSelectedBorderColor2,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact preferences',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk24,
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: contactPreferences.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          index == 1
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NewsLetter(),
                                  ))
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NewsLetter(),
                                  ));
                        },
                        child: ListTile(
                          minLeadingWidth: 0,
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          visualDensity:
                              const VisualDensity(horizontal: -3, vertical: -4),
                          leading:
                              SvgPicture.asset(contactPreferences[index].image),
                          title: Text(
                            contactPreferences[index].name,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Coloring.blk24,
                            )),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Coloring.blk24,
                            size: 12,
                          ),
                          minVerticalPadding: 0,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            // Settings
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 35),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Coloring.gry16.withOpacity(0.4),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      blurStyle: BlurStyle.outer,
                      color: Coloring.otpSelectedBorderColor2,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Settings',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk24,
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: settings.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          (index == 0)
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ChangePassword(),
                                  ))
                              : (index == 1)
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DeleteAccount(),
                                      ))
                                  : signOutDialogBox();
                        },
                        minLeadingWidth: 0,
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        visualDensity:
                            const VisualDensity(horizontal: -3, vertical: -4),
                        leading: SvgPicture.asset(settings[index].image),
                        title: Text(
                          settings[index].name,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Coloring.blk24,
                          )),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Coloring.blk24,
                          size: 12,
                        ),
                        minVerticalPadding: 0,
                      );
                    },
                  )
                ],
              ),
            ),
            // What do you think of the app?
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'What do you think of the',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Coloring.blk,
                    )),
                  ),
                  Text(
                    'app?',
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
            ),
            // emojis
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(Assets.sad1),
                Image.asset(Assets.neutral1),
                Image.asset(Assets.smile1),
              ],
            ),
            // Thanks,would you mind rating us?
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15),
              child: Center(
                child: Text(
                  'Thanks,would you mind rating us?',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Coloring.blk,
                  )),
                ),
              ),
            ),
            // bottom button for give us rating
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
                  'Give us a rating',
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
            // No,thanks
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Center(
                child: Text(
                  'No,thanks',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Coloring.blk,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // to show sign out dialog box
  signOutDialogBox() {
    return showDialog<String>(
      barrierColor: Coloring.blk28,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'Sign out',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Coloring.blk.withOpacity(0.4),
          )),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 250,
              child: Text(
                'Your saved properties and searches will not be available while you are signed out.',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk25,
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: Text(
                'Are you sure  you wish to continue?',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk25,
                )),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Coloring.ble13, Coloring.ble15]),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                'No',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte14,
                )),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
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
              padding:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Coloring.ble13, Coloring.ble15]),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                'Yes',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte14,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // to show sign out dialog box
  signOut() {
    return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: '',
      barrierColor: Colors.black38,
      transitionDuration: Duration(milliseconds: 500),
      pageBuilder: (ctx, anim1, anim2) => AlertDialog(
        title: Text(
          'Sign out',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Coloring.blk.withOpacity(0.4),
          )),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 250,
              child: Text(
                'Your saved properties and searches will not be available while you are signed out.',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk25,
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: Text(
                'Are you sure  you wish to continue?',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.blk25,
                )),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding:
                  const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Coloring.ble13, Coloring.ble15]),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                'No',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte14,
                )),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Coloring.ble13, Coloring.ble15]),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              'Yes',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Coloring.wte14,
              )),
            ),
          ),
        ],
      ),
      transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
        child: FadeTransition(
          child: child,
          opacity: anim1,
        ),
      ),
      context: context,
    );
  }
}

// to show email id data in appbar
class EmailId {
  String emailIds;
  EmailId({required this.emailIds});
}

// to show legal data
class Legal {
  String image;
  String name;
  Legal({required this.name, required this.image});
}

// to show support data
class Support {
  String image;
  String name;
  Support({required this.name, required this.image});
}

// to show settings data
class Settings {
  String image;
  String name;
  Settings({required this.name, required this.image});
}

// to show settings data
class ContactPreferences {
  String image;
  String name;
  ContactPreferences({required this.name, required this.image});
}
