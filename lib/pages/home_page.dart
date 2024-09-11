import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipedealweb/pages/about_registration_page.dart';
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
        title: InkWell(
          child: Text(
            'NipeDeal',
            style: TextStyle(color: white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutRegistrationPage()));
              },
              child: Text(
                'Register',
                style: GoogleFonts.montserrat(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [ScreenOne(), ScreenTwo(), PaymentDetals()],
      ),
    );
  }
}
