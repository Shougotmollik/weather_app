import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/constatns/app_color.dart';

class DaysDetailsCard extends StatelessWidget {
  const DaysDetailsCard({
    super.key,
    required this.sunriseTime,
    required this.sunsetTime,
  });

  final String sunriseTime;
  final String sunsetTime;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height*0.185,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AppColor.firstContainerColor,
                AppColor.thirdContainerColor,
              ]),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 08,
              children: [
                const Icon(Icons.wb_sunny, color: Colors.white),
                Text(
                  "SUNRISE",
                  style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Text(
              sunriseTime,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                letterSpacing: 2,
              ),
            ),
            Text(
              "Sunset: $sunsetTime",
              style: GoogleFonts.poppins(
                  color: Colors.white54,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
