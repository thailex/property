import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class Photos extends StatefulWidget {
  const Photos({super.key});
  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  List<Photo> photo = [
    Photo(image: Assets.propertyImage),
    Photo(image: Assets.propertyImage),
    Photo(image: Assets.propertyImage),
    Photo(image: Assets.propertyImage),
    Photo(image: Assets.propertyImage),
    Photo(image: Assets.propertyImage),
    Photo(image: Assets.propertyImage),
    Photo(image: Assets.propertyImage),
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
              'Photos(8)',
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
        // list view builder for view photo
        body: ListView.builder(
          itemCount: photo.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Coloring.wte, boxShadow: [
                BoxShadow(
                  color: Coloring.otpSelectedBorderColor2,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                  blurStyle: BlurStyle.outer,
                ),
              ]),
              child: Image.asset(photo[index].image),
            );
          },
        ));
  }
}

// photos data
class Photo {
  String image;
  Photo({required this.image});
}
