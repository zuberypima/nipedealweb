import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipedealweb/pages/constants.dart';
import 'package:readmore/readmore.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [mainColor, lightmainColor])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [logoBox()],
      ),
    );
  }
}

Widget logoBox() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(
            'Habari',
            style: GoogleFonts.montserrat(
                color: white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(height: 40, width: 40, child: Image.asset('assets/wave.png'))
        ],
      ),
      Text(
        'Karibu kwenye NipeDeal ',
        style: GoogleFonts.montserrat(
            color: white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      ReadMoreText(
        nipedealMessage,
        trimMode: TrimMode.Line,
        trimLines: 4,
        lessStyle: GoogleFonts.montserrat(color: white),
        moreStyle: GoogleFonts.montserrat(color: white),
        style: GoogleFonts.montserrat(color: white),
      )
      // Text(
      //   nipedealMessage,
      //   style: GoogleFonts.montserrat(color: white),
      // )
    ],
  );
}
