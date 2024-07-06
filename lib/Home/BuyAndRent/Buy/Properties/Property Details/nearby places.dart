import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class NearByPlaces extends StatefulWidget {
  const NearByPlaces({super.key});

  @override
  State<NearByPlaces> createState() => _NearByPlacesState();
}

class _NearByPlacesState extends State<NearByPlaces> {
  List<NearBy> nearBy = [
    NearBy(
        image: '', km: '0.2 Km', place: 'Railway station', placeName: 'Oxford'),
    NearBy(
        image: '',
        km: '0.8 Km',
        place: 'Primary School',
        placeName: 'St Ebbe’s church of England Aided primaryschool'),
    NearBy(
        image: '',
        km: '0.2 Km',
        place: 'Railway station',
        placeName: 'Oxford Parkway'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Coloring.bg1,
            Coloring.bg2,
            Coloring.bg3,
          ])),
        ),
        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 35.0),
        //   child: IconButton(
        //     icon: Icon(
        //       Icons.arrow_back_ios,
        //       color: Coloring.wte,
        //     ),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        // ),
        title: Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/locationIcon.svg',
                color: Coloring.wte.withOpacity(0.8),
                height: 22,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Nearby',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte,
                )),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Coloring.wte,
                  size: 17,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ))
        ],
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Coloring.ble14,
          ),
          // body
          Container(
            height: MediaQuery.of(context).size.height / 1.18,
            decoration: BoxDecoration(
              color: Coloring.wte,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Listview builder for show near by places by list tile
                  ListView.builder(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: nearBy.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(
                            left: 5, right: 5, top: 8, bottom: 8),
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, bottom: 20),
                        decoration: BoxDecoration(
                            color: Coloring.wte,
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                  color: Coloring.bg4.withOpacity(0.2),
                                  blurRadius: 4,
                                  blurStyle: BlurStyle.outer,
                                  offset: const Offset(0, 0))
                            ]),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Coloring.gry,
                            radius: 25,
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                nearBy[index].placeName,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.blk,
                                )),
                              ),
                              Text(
                                nearBy[index].place,
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Coloring.gry,
                                )),
                              ),
                            ],
                          ),
                          trailing: Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 4, bottom: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Coloring.grn,
                            ),
                            child: Text(
                              nearBy[index].km,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Coloring.wte,
                              )),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// to show nearby places data
class NearBy {
  String image;
  String placeName;
  String place;
  String km;
  NearBy(
      {required this.image,
      required this.km,
      required this.place,
      required this.placeName});
}
