import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_assets.dart';
import 'package:weather_app/core/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor.withAlpha(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.45,
              padding: const EdgeInsets.all(26),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(AppAssets.cloudyImage),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Dhaka, Bangladesh',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                            size: 24,
                          ))
                    ],
                  ),
                  Positioned(
                    top: 100,
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 70,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              const TextSpan(text: '24'),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.top,
                                child: Transform.translate(
                                  offset: const Offset(0, -4),
                                  child: const Text(
                                    '°',
                                    style: TextStyle(
                                        fontSize: 50,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const TextSpan(
                                  text: 'Feels like -2°',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                  children: []),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                      bottom: 10,
                      right: 2,
                      left: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'January 18,12:14',
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.w500),
                          ),
                          Column(
                            children: [
                              Text(
                                'Day 3° ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                'Night -3° ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),
            Expanded(
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
