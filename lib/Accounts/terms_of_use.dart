import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';

class TermsOfUse extends StatefulWidget {
  const TermsOfUse({super.key});

  @override
  State<TermsOfUse> createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
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
            'Terms of Use',
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
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Expat & Property Management V.O.F trading as “Expat & Property Management”, the user of these general terms and conditions, with registered office in The Hague, registered in the Trade Register under Chamber of Commerce number 62552449, hereafter called EPM.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk,
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              ' Client: the natural or legal person with whom EPM has entered into agreement or with whom it intends to do so.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk,
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              ' Agreement: any agreement between EPM and a client in which EPM undertakes to carrying out activities/provision of services.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk,
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Tenant: any natural person who, within the scope of the rental services of EPM, has entered into a rental agreement with the client.',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Coloring.blk,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
