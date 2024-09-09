import 'package:flutter/material.dart';
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
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: logoBox(),
          )
        ],
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
            style: TextStyle(
                color: white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          SizedBox(height: 40, width: 40, child: Image.asset('assets/wave.png'))
        ],
      ),
      Text(
        'Karibu kwenye NipeDeal  ',
        style:
            TextStyle(color: white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 30,
      ),
      ReadMoreText(
        nipedealMessage,
        trimMode: TrimMode.Line,
        trimLines: 4,
        lessStyle: TextStyle(color: white),
        moreStyle: TextStyle(color: white),
        style: TextStyle(color: white),
      )
    ],
  );
}
