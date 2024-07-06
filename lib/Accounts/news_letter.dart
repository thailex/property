import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Accounts/news_letter_details.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class NewsLetter extends StatefulWidget {
  const NewsLetter({super.key});

  @override
  State<NewsLetter> createState() => _NewsLetterState();
}

class _NewsLetterState extends State<NewsLetter> {
  List<NewsLetterData> newsLetterDetails = [
    NewsLetterData(
        image: '',
        title: 'Crypto, fractional real estate investing, and more.',
        date: '21st Sept 2021',
        publisher: 'Altreports'),
    NewsLetterData(
        image: '',
        title: 'Crypto, fractional real estate investing, and more.',
        date: '21st Sept 2021',
        publisher: 'Altreports'),
    NewsLetterData(
        image: '',
        title: 'Crypto, fractional real estate investing, and more.',
        date: '21st Sept 2021',
        publisher: 'Altreports'),
    NewsLetterData(
        image: '',
        title: 'Crypto, fractional real estate investing, and more.',
        date: '21st Sept 2021',
        publisher: 'Altreports'),
    NewsLetterData(
        image: '',
        title: 'Crypto, fractional real estate investing, and more.',
        date: '21st Sept 2021',
        publisher: 'Altreports'),
    NewsLetterData(
        image: '',
        title: 'Crypto, fractional real estate investing, and more.',
        date: '21st Sept 2021',
        publisher: 'Altreports'),
    NewsLetterData(
        image: '',
        title: 'Crypto, fractional real estate investing, and more.',
        date: '21st Sept 2021',
        publisher: 'Altreports'),
    NewsLetterData(
        image: '',
        title: 'Crypto, fractional real estate investing, and more.',
        date: '21st Sept 2021',
        publisher: 'Altreports'),
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
              ]),
            ),
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
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(),
            child: Text(
              'NewsLetters',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Coloring.wte,
                ),
              ),
            ),
          ),
          toolbarHeight: 70,
        ),
        body: ListView.builder(
          itemCount: newsLetterDetails.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewsLetterDetails(),
                    ));
              },
              child: Container(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 8, bottom: 8),
                margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                decoration: BoxDecoration(
                    color: Coloring.wte,
                    borderRadius: BorderRadius.circular(15),
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
                  title: Text(
                    newsLetterDetails[index].title,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Coloring.blk,
                    )),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        newsLetterDetails[index].publisher,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Coloring.gry,
                        )),
                      ),
                      Text(
                        newsLetterDetails[index].date,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Coloring.gry,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}

class NewsLetterData {
  String image;
  String title;
  String publisher;
  String date;
  NewsLetterData(
      {required this.image,
      required this.title,
      required this.date,
      required this.publisher});
}
