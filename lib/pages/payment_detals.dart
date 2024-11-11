import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nipedealweb/constants/key_words.dart';
import 'package:nipedealweb/pages/constants.dart';
import 'package:nipedealweb/pages/dimensions_page.dart';

class PaymentDetals extends StatefulWidget {
  const PaymentDetals({super.key});

  @override
  State<PaymentDetals> createState() => _PaymentDetalsState();
}

class _PaymentDetalsState extends State<PaymentDetals> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: mediaWidth(context),
        height: mediaheight(context),
        color: mainColor,
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              children: [
                freePlan(context),
                standardPlan(context),
                premiumPlan(context)
              ],
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              freePlan(context),
              standardPlan(context),
              premiumPlan(context)
            ],
          );
        }));
  }
}

Widget freePlan(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      // height: mediaWidth(context) / 3,
      decoration: BoxDecoration(
          color: lightmainColor,
          // mainColor,
          border: Border.all(
            color: lightmainColor,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Free Plan (0.0 /= Tsh)',
                style: TextStyle(color: white, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Text(
              '1: View all Jobs/ Opportunities.',
              style: TextStyle(color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '2: Notified for New Jobs/ Opportunity',
              style: GoogleFonts.montserrat(
                  color: white, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    ),
  );
}

Widget standardPlan(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      // height: mediaWidth(context) / 2.2,
      decoration: BoxDecoration(
          color: Color.fromRGBO(46, 49, 146, 1),
          // Colors.lightBlue,
          border: Border.all(
            color: Colors.lightBlue,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Standard Plan (6,000.00 /= Tsh)',
                style: TextStyle(color: white, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Text(
              '1: View all Jobs/ Opportunities.',
              style: TextStyle(color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '2: Notified for New Jobs/ Opportunity',
              style: GoogleFonts.montserrat(
                  color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '3: Easy apply mode for 3 Jobs per month ',
              style: GoogleFonts.montserrat(
                  color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '4: Store your CV, Certificates and Other Documents ',
              // textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '5:  ${cv_writing_guidlines} ',
              // textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: white, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    ),
  );
}

Widget premiumPlan(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      // height: mediaWidth(context) / 2,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Premium Plan (12,000.00 /= Tsh)',
                style: TextStyle(color: white, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Text(
              '1: View all Jobs/ Opportunities.',
              // textAlign: TextAlign.center,
              style: TextStyle(color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '2: Notified for New Jobs/ Opportunity',
              // textAlign: TextAlign.center,
              style: TextStyle(color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '3: Easy apply mode for unlimited Jobs per month ',
              // textAlign: TextAlign.center,
              style: TextStyle(color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '4: Store your CV, Certificates and Other Documents',
              // textAlign: TextAlign.center,
              style: TextStyle(color: white, fontWeight: FontWeight.w500),
            ),
            Text(
              '5: ${cv_writing_guidlines}',
              // textAlign: TextAlign.center,
              style: TextStyle(color: white, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    ),
  );
}
