import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/constatns/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onTap,
    required this.btnText,
  });
  final VoidCallback onTap;
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            color: AppColor.yellowColor,
            borderRadius: BorderRadius.circular(50)),
        child: Center(
            child: Text(btnText,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: AppColor.firstColor),
                ))),
      ),
    );
  }
}
