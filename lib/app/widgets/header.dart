import 'package:flutter/material.dart';

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
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/header-background.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              ClipOval(

                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 6,
                          blurRadius: 4.0,
                          blurStyle: BlurStyle.outer,
                          color: Colors.cyan.shade300,
                          offset: Offset(0.0,10.0),

                        ),
                      ]

                  ),
                  height: 300,
                  width: 300,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: AppColors.primary,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: ClipOval(
                        child: Image.asset('assets/profile.png'),

                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Arbaaz',
                style: GoogleFonts.montserrat(
                  color: AppColors.light,
                  fontSize: 24,
                ),
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
