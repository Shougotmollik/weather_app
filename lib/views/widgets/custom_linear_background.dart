import 'package:flutter/material.dart';
import 'package:weather_app/constatns/app_color.dart';

class CustomLinearBackground extends StatelessWidget {
  const CustomLinearBackground({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.firstColor,
            AppColor.secondColor,
            AppColor.thirdColor,
          ],
        ),
      ),
      child: child,
    );
  }
}
