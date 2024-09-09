import 'package:flutter/material.dart';
import 'package:nipedealweb/pages/constants.dart';
import 'package:nipedealweb/pages/payment_detals.dart';
import 'package:nipedealweb/pages/screen_one.dart';
import 'package:nipedealweb/pages/screen_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        title: Text(
          'NipeDeal',
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [ScreenOne(), ScreenTwo(), PaymentDetals()],
      ),
    );
  }
}
