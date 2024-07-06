import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:prides_sales_and_lettings/Home/BuyAndRent/buy_rent.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/RentalAgreement/rent_agreement.dart';
import 'package:prides_sales_and_lettings/Home/LegalServices/TenantVerification/tenant_verification.dart';
import 'package:prides_sales_and_lettings/Home/Payment/payment_method.dart';
import 'package:prides_sales_and_lettings/Home/RequestForEvaluation/request_for_evaluation.dart';
import 'package:prides_sales_and_lettings/Home/Services/services.dart';
import '../Asset/asset.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? selectedValue;
  final List<String> saleType = ['Buy', 'Rent'];
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  List<Services> services = [
    Services(image: '', title: 'Home', subtitle: 'Loan'),
    Services(image: '', title: 'Sale', subtitle: 'Agreement'),
    Services(image: '', title: 'Refer &', subtitle: 'Earn'),
    Services(image: '', title: 'Legal', subtitle: 'Service'),
    Services(image: '', title: 'Home', subtitle: 'Renovation'),
    Services(image: '', title: 'AC Service', subtitle: '& Repair'),
  ];
  List<RecentSearch> recentSearch = [
    RecentSearch(
        name: 'York station,York,North',
        image: Assets.property,
        details: 'For sale, 1-5 beds'),
    RecentSearch(
        name: 'NewYork,North Yorkshire',
        image: Assets.property,
        details: 'For sale, 1-3 beds'),
    RecentSearch(
        name: 'York station,York,North',
        image: Assets.property,
        details: 'For sale, 1-5 beds'),
  ];
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Coloring.bg1,
          Coloring.bg2,
          Coloring.bg3,
        ])),
        // Fixed Header and Scrollable Body
        child: Column(
          children: [
            // Fixed Header
            Stack(
              children: [
                SvgPicture.asset(
                  Assets.bg,
                  width: MediaQuery.of(context).size.width,
                ),
                // header
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 50.0, left: 25, right: 25, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Find your best\nproperty',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Coloring.wte,
                            )),
                          ),
                          SvgPicture.asset('assets/notification.svg'),
                        ],
                      ),
                    ),
                    Center(
                      child: Text(
                        'Search properties for sale and to rent in the UK',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Coloring.wte,
                        )),
                      ),
                    ),
                    // search
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                      child: Row(
                        children: [
                          // dropdown buy button
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color:
                                        Coloring.otpContainer.withOpacity(0.2),
                                  ),
                                ),
                                color: Coloring.wte,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    topLeft: Radius.circular(25))),
                            child: SizedBox(
                              width: 80,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  iconStyleData: const IconStyleData(
                                    icon: Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 18,
                                    ),
                                  ),
                                  dropdownStyleData: DropdownStyleData(
                                    maxHeight: 280,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Coloring.wte,
                                    ),
                                  ),
                                  isExpanded: true,
                                  hint: Text(
                                    'Buy',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.otpSelectedBorderColor1,
                                      ),
                                    ),
                                  ),
                                  items: saleType
                                      .map((String item) =>
                                          DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Coloring.blk,
                                                ),
                                              ),
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
                                    padding:
                                        EdgeInsets.only(left: 20, right: 10),
                                    height: 30,
                                    width: 80,
                                  ),
                                  menuItemStyleData: const MenuItemStyleData(
                                    height: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // search
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Coloring.wte),
                                  color: Coloring.wte,
                                  borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(25),
                                      topRight: Radius.circular(25))),
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Coloring.blk1,
                                  ),
                                ),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 40.0, right: 20),
                                    child: SvgPicture.asset(
                                      Assets.search,
                                    ),
                                  ),
                                  hintText: 'Search e.g.Oxford or NW3',
                                  hintStyle: GoogleFonts.poppins(
                                    textStyle: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.gry2,
                                      ),
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    left:
                                        MediaQuery.of(context).size.width / 30,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Coloring.wte),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(25),
                                          topRight: Radius.circular(25))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Coloring.wte),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(25),
                                          topRight: Radius.circular(25))),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Coloring.wte),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(25),
                                          topRight: Radius.circular(25))),
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
                    // Container(
                    //   padding: const EdgeInsets.only(),
                    //   margin:
                    //       const EdgeInsets.only(top: 10, left: 15, right: 15),
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Coloring.wte),
                    //       color: Coloring.wte,
                    //       borderRadius: BorderRadius.circular(25)),
                    //   child: IntrinsicHeight(
                    //     child: Row(
                    //       children: [
                    //         SizedBox(
                    //           width: 68,
                    //           child: DropdownButtonHideUnderline(
                    //             child: DropdownButton2<String>(
                    //               iconStyleData: const IconStyleData(
                    //                 icon: Icon(
                    //                   Icons.keyboard_arrow_down,
                    //                   size: 18,
                    //                 ),
                    //               ),
                    //               dropdownStyleData: DropdownStyleData(
                    //                 maxHeight: 250,
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(15),
                    //                   color: Coloring.wte,
                    //                 ),
                    //               ),
                    //               isExpanded: true,
                    //               hint: Text(
                    //                 'Buy',
                    //                 style: GoogleFonts.poppins(
                    //                   textStyle: TextStyle(
                    //                     fontSize: 8,
                    //                     fontWeight: FontWeight.w400,
                    //                     color: Coloring.otpSelectedBorderColor1,
                    //                   ),
                    //                 ),
                    //               ),
                    //               items: countryCode
                    //                   .map((String item) =>
                    //                       DropdownMenuItem<String>(
                    //                         value: item,
                    //                         child: Text(
                    //                           item,
                    //                           style: const TextStyle(
                    //                             fontSize: 10,
                    //                           ),
                    //                         ),
                    //                       ))
                    //                   .toList(),
                    //               value: selectedValue,
                    //               onChanged: (String? value) {
                    //                 setState(() {
                    //                   selectedValue = value;
                    //                 });
                    //               },
                    //               buttonStyleData: const ButtonStyleData(
                    //                 padding:
                    //                     EdgeInsets.only(left: 20, right: 15),
                    //                 height: 30,
                    //                 width: 80,
                    //               ),
                    //               menuItemStyleData: const MenuItemStyleData(
                    //                 height: 20,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           width: 1,
                    //           child: VerticalDivider(
                    //             color: Coloring.otpContainer.withOpacity(0.2),
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           width: MediaQuery.of(context).size.width / 1.48,
                    //           child: TextFormField(
                    //             style: GoogleFonts.poppins(
                    //               textStyle: TextStyle(
                    //                 decoration: TextDecoration.none,
                    //                 fontSize: 12,
                    //                 fontWeight: FontWeight.w400,
                    //                 color: Coloring.blk1,
                    //               ),
                    //             ),
                    //             keyboardType: TextInputType.text,
                    //             decoration: InputDecoration(
                    //               suffixIcon: Padding(
                    //                 padding: const EdgeInsets.only(
                    //                     left: 40.0, right: 20),
                    //                 child: SvgPicture.asset(
                    //                   Assets.search,
                    //                 ),
                    //               ),
                    //               hintText: 'Search e.g.Oxford or NW3',
                    //               hintStyle: GoogleFonts.poppins(
                    //                 textStyle: GoogleFonts.poppins(
                    //                   textStyle: TextStyle(
                    //                     decoration: TextDecoration.none,
                    //                     fontSize: 8,
                    //                     fontWeight: FontWeight.w400,
                    //                     color: Coloring.gry2,
                    //                   ),
                    //                 ),
                    //               ),
                    //               contentPadding: const EdgeInsets.only(
                    //                   left: 15, right: 0, top: 0, bottom: 0),
                    //               focusedBorder: InputBorder.none,
                    //               enabledBorder: InputBorder.none,
                    //             ),
                    //             validator: (value) {
                    //               if (value == null || value.isEmpty) {
                    //                 return 'Required Field';
                    //               }
                    //               return null;
                    //             },
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            // Scrollable Body
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35),
                  ),
                  color: Coloring.wte,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  controller: _controller,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRecentSearchesSection(),
                      _buildServicesForYouSection(),
                      _buildAgentsSection(),
                      _buildLegalServicesSection(),
                      _buildPayYourRentSection(),
                      _buildNeedAssistanceSection(),
                      // Add more sections here as needed
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //recent searches
  Widget _buildRecentSearchesSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.accessTime,
                    height: 12,
                  ),
                  const SizedBox(width: 3),
                  Text(
                    'RECENT SEARCHES',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk3,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'CLEAR',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Coloring.blk3,
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: recentSearch
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BuyAndRent(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(
                            top: 10, right: 10, bottom: 20),
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Coloring.otpSelectedBorderColor2,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              e.image,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    e.name,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.gry3,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    e.details,
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: Coloring.blk,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

  //services for you
  Widget _buildServicesForYouSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'SERVICES FOR YOU',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Coloring.blk3,
              ),
            ),
          ),
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 15, right: 15, top: 10, bottom: 15),
              padding: const EdgeInsets.only(
                  bottom: 20, left: 15, right: 35, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Coloring.otpSelectedBorderColor2,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 70,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: services.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(top: 15, left: 0, right: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Coloring.otpSelectedBorderColor2,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Coloring.lgtBlue,
                          child: Image.asset(Assets.homeLoan),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          services[index].title,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk3,
                            ),
                          ),
                        ),
                        Text(
                          services[index].subtitle,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ServicesOffered()),
                  );
                },
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Coloring.gradient4,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 13,
                    color: Coloring.wte,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // agents
  Widget _buildAgentsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'AGENTS',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Coloring.blk3,
              ),
            ),
          ),
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RequestEvaluation(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, bottom: 20, top: 20),
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Coloring.otpSelectedBorderColor2,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/agent.svg'),
                    const SizedBox(width: 5),
                    Text(
                      'Request property valuation',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(70, 73, 86, 1),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromRGBO(55, 56, 58, 1),
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 30,
              child: Image.asset(Assets.agent1),
            ),
          ],
        ),
      ],
    );
  }

  //legal services
  Widget _buildLegalServicesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'LEGAL SERVICES',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Coloring.blk3,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          color: Coloring.wte1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RentAgreement(),
                      ));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Coloring.otpSelectedBorderColor3,
                      child: SvgPicture.asset(Assets.rentalAgreement),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Rental',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Coloring.blk4,
                        ),
                      ),
                    ),
                    Text(
                      'Agreement',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: Coloring.blk4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TenantVerification(),
                      ));
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Coloring.otpSelectedBorderColor3,
                          child: SvgPicture.asset(Assets.tenantVerification),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Tenant',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk4,
                            ),
                          ),
                        ),
                        Text(
                          'Verification',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                              color: Coloring.blk4,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, top: 1, bottom: 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Coloring.lgtOrange,
                      ),
                      child: Text(
                        'Flat 25% off',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 6,
                            fontWeight: FontWeight.w300,
                            color: Coloring.blk5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Coloring.otpSelectedBorderColor3,
                    child: SvgPicture.asset(Assets.saleAgreement),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Sale',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk4,
                      ),
                    ),
                  ),
                  Text(
                    'Agreement',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk4,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Coloring.otpSelectedBorderColor3,
                    child: SvgPicture.asset(Assets.propertyLegalService),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Property Legal',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk4,
                      ),
                    ),
                  ),
                  Text(
                    'Service',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk4,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // pay your rent and bills
  Widget _buildPayYourRentSection() {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          height: 111,
          padding: const EdgeInsets.all(15),
          margin:
              const EdgeInsets.only(top: 5, bottom: 10, right: 15, left: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Coloring.blk.withOpacity(0.4),
                blurStyle: BlurStyle.outer,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pay Your Rent & Bills',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Coloring.blk4,
                      ),
                    ),
                  ),
                  Text(
                    '& Earn up to £30k!',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.gry4,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentMethod(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        color: Coloring.ble,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Pay Now',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Coloring.wte,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Safe secure Quick',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.gry5,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            Assets.payRentAndBills,
            height: 110,
          ),
        ),
      ],
    );
  }

  //need assistance
  Widget _buildNeedAssistanceSection() {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15, top: 15, bottom: 1),
          margin:
              const EdgeInsets.only(top: 5, bottom: 10, right: 15, left: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Coloring.blk.withOpacity(0.4),
                blurStyle: BlurStyle.outer,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Need Assistance?',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Coloring.blk6,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'We are a just call away!',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Coloring.gry6,
                      ),
                    ),
                  ),
                  Text(
                    '(+44 7653254678)',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: Coloring.gry7,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Image.asset(Assets.telephoneCall),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width / 15,
            bottom: 12,
          ),
          child: Image.asset(
            Assets.needAssistance,
          ),
        ),
      ],
    );
  }
}

// Services class
class Services {
  String image;
  String title;
  String subtitle;
  Services({required this.image, required this.title, required this.subtitle});
}

// RecentSearch class
class RecentSearch {
  String image;
  String name;
  String details;
  RecentSearch(
      {required this.name, required this.image, required this.details});
}
