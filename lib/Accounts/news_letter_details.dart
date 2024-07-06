import 'package:flutter/material.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class NewsLetterDetails extends StatefulWidget {
  const NewsLetterDetails({super.key});

  @override
  State<NewsLetterDetails> createState() => _NewsLetterDetailsState();
}

class _NewsLetterDetailsState extends State<NewsLetterDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Coloring.bg1,
            Coloring.bg2,
            Coloring.bg3,
          ]),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Coloring.wte,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
