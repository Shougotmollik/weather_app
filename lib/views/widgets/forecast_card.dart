import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/constatns/app_color.dart';

class ForecastCard extends StatelessWidget {
  final String temp;
  final String image;
  final String day;
  final bool isFirst;

  const ForecastCard({
    super.key,
    required this.temp,
    required this.image,
    required this.day,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 180,
      decoration: BoxDecoration(
        gradient: isFirst
            ? const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.firstContainerColor,
                  AppColor.secondContainerColor,
                  AppColor.thirdContainerColor,
                ],
              )
            : const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.forthContainerColor,
                  AppColor.fifthContainerColor,
                ],
              ),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            temp,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          // const SizedBox(height: 5),
          Image.asset(
            image,
            color: Colors.white,
            height: 50,
            fit: BoxFit.cover,
          ),
          // const SizedBox(height: 5),
          Text(
            day,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
