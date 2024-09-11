import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipedealweb/constants/key_words.dart';
import 'package:nipedealweb/pages/constants.dart';
import 'package:nipedealweb/pages/dimensions_page.dart';

class AboutRegistrationPage extends StatefulWidget {
  const AboutRegistrationPage({super.key});

  @override
  State<AboutRegistrationPage> createState() => _AboutRegistrationPageState();
}

class _AboutRegistrationPageState extends State<AboutRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: mediaheight(context),
        width: mediaWidth(context),
        color: white,
        //  Colors.lightBlueAccent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              logo_box(),
              Text(
                sentes_1_reg,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600, color: white),
              ),
              Divider(),
              Text(
                '1: ' + sentes_2_reg,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500, color: white),
              ),
              Text(
                '2: ' + sentes_3_reg,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500, color: Colors.black),
              ),
              Text(
                '3: ' + sentes_4_reg,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500, color: Colors.black),
              ),
              Text(
                '4: ' + sentes_5_reg,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500, color: Colors.black),
              ),
              Divider(),
              Row(
                children: [
                  downolad_box(),
                  Text('Click here to download your app')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget logo_box() {
    return Container(
      height: 50,
      width: mediaWidth(context),
      color: mainColor,
      child: Center(
        child: Text(
          'NipeDeal',
          style: GoogleFonts.montserrat(
            color: white,
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
      ),
    );
  }

  Widget downolad_box() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/google.png'))),
    );
  }
}
