import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/constatns/app_color.dart';
import 'package:weather_app/controller/forecast_controller.dart';
import 'package:weather_app/views/widgets/air_quality_card.dart';
import 'package:weather_app/views/widgets/custom_linear_background.dart';
import 'package:weather_app/views/widgets/forecast_card.dart';
import 'package:weather_app/views/widgets/uv_index_card.dart';

import '../widgets/days_details_card.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ForecastController forecastController =
        Get.find<ForecastController>();

    return Scaffold(
      backgroundColor: const Color(0xFF3E1F92), // deep purple
      body: CustomLinearBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 48),
              Center(
                child: Column(
                  children: [
                    _buildTextSection(
                        text: "North America",
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        fontColor: AppColor.whiteColor),
                    const SizedBox(height: 5),
                    _buildTextSection(
                        maxTemp: 24,
                        minTemp: 18,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        fontColor: Colors.white60,
                        text: ''),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              _buildTextSection(
                  text: "7-Days Forecasts",
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  fontColor: Colors.white),
              const SizedBox(height: 20),
              _buildForecastSection(forecastController),
              const SizedBox(height: 38),
              const AirQualityCard(),
              const SizedBox(height: 38),
              const Row(
                spacing: 15,
                children: [
                  DaysDetailsCard(
                    sunriseTime: '5:28AM',
                    sunsetTime: '7:25AM',
                  ),
                  UvIndexCard(uvIndex: 4, uvStatus: 'Moderate')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildForecastSection(ForecastController forecastController) {
    return Obx(() => SizedBox(
          height: 155,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: forecastController.forecastList.length,
            separatorBuilder: (_, __) => const SizedBox(width: 08),
            itemBuilder: (context, index) {
              final item = forecastController.forecastList[index];

              return InkWell(
                onTap: () => forecastController.selectedIndex(index),
                child: ForecastCard(
                    temp: item.temp,
                    image: item.image,
                    day: item.day,
                    isFirst: index == 0),
              );
            },
          ),
        ));
  }

  Widget _buildTextSection({
    required String text,
    required FontWeight fontWeight,
    required double fontSize,
    required Color fontColor,
    int? maxTemp,
    int? minTemp,
  }) {
    String finalText = text;

    if (maxTemp != null && minTemp != null) {
      finalText = 'Max: $maxTemp°   Min: $minTemp°';
    }

    return Text(
      finalText,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
        letterSpacing: 0.47,
      ),
    );
  }
}
