import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipedealweb/pages/constants.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
            child: Text(
              kuhusuNipedel,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          imageBox(context, 'patataarifa.jpeg'),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 10, left: 10),
            child: head_Content(
              context,
              pata_taarifa,
              pata_taarifa_details,
            ),
          ),
          imageBox(context, 'hifadhi.jpeg'),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
            child:
                head_Content(context, hifadhi_cv_zako, hifadhi_cv_zako_detail),
          ),
          imageBox(context, 'maombi.png'),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, right: 10, left: 10),
            child: head_Content(
                context, auto_aplication, fanya_maombi_kirahisi_details),
          ),
        ],
      ),
    );
  }
}

Widget head_Content(context, String head, contentDetails) {
  return Column(
    children: [
      SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(
            head,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
          )),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          contentDetails,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(),
        )),
      )
    ],
  );
}

Widget imageBox(context, String imageUrl) {
  return Container(
    height: 100,
    width: 200,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
            image: AssetImage('assets/$imageUrl'), fit: BoxFit.fill)),
  );
}
