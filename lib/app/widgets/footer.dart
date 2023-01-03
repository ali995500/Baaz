import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:site/app/core/app_colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 4),
      color: AppColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'for Baaz ❤️',
            style: GoogleFonts.montserrat(
              color: AppColors.light,
              fontSize: 20,
            ),
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/developer.png',
            height: 20,
          ),
        ],
      ),
    );
  }
}
