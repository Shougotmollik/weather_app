import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/constatns/app_assets.dart';
import 'package:weather_app/constatns/app_color.dart';
import 'package:weather_app/route/route_names.dart';
import 'package:weather_app/views/widgets/custom_elevated_button.dart';

import '../widgets/custom_linear_background.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomLinearBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              _buildImageSection(),
              const SizedBox(height: 78),
              _buildTextSection(
                  text: 'Weather',
                  fontWeight: FontWeight.w700,
                  fontColor: AppColor.whiteColor),
              _buildTextSection(
                  text: 'Forecasts',
                  fontWeight: FontWeight.w500,
                  fontColor: AppColor.yellowColor),
              const SizedBox(height: 58),
              CustomElevatedButton(
                onTap: () {
                  Get.offNamed(RouteNames.forecastScreen);
                },
                btnText: 'Get Start',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextSection(
      {required String text,
      required FontWeight fontWeight,
      required Color fontColor}) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: fontColor,
          fontSize: 64,
          fontWeight: fontWeight,
          letterSpacing: -0.37,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildImageSection() {
    return Image.asset(
      AppAssets.weatherSunImage,
      fit: BoxFit.cover,
    );
  }
}
