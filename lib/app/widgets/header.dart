import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:site/app/core/app_colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(16),
          //   child: Image.asset(
          //     'assets/header-background.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 5.0,
                    blurStyle: BlurStyle.normal,
                    color: AppColors.primary,
                  ),
                ]),
                height: 200,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Image.asset('assets/profile.png'),
                ),
              ),
              const SizedBox(height: 25),
              GlowText(
                'Arbaaz',
                style: GoogleFonts.montserrat(
                  color: AppColors.light,
                  fontSize: 24,
                ),
                glowColor: AppColors.primary,
                blurRadius: 2,
              ),
              const SizedBox(height: 4),
              Text(
                'Flutter Developer Instructor',
                style: GoogleFonts.montserrat(
                  color: AppColors.light,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}
