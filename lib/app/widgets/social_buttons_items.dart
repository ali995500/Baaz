import 'package:flutter/material.dart';

import 'package:flutter_glow/flutter_glow.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:site/app/core/app_colors.dart';

class SocialButtonsItems extends StatelessWidget {
  const SocialButtonsItems({
    Key? key,
    required this.title,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 40,
        width: 250,
        padding: const EdgeInsets.only(left: 58),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.primary.withOpacity(0.50),

          // boxShadow: const [
          //   BoxShadow(
          //     color: Colors.white,
          //     blurRadius: 2.0,
          //     spreadRadius: 0.0,
          //     offset: Offset(2.0, 2.0), // shadow direction: bottom right
          //   ),
          //   BoxShadow(
          //     color: Colors.white,
          //     blurRadius: 2.0,
          //     spreadRadius: 0.0,
          //     offset: Offset(2.0, 2.0), // shadow direction: bottom right
          //   ),
          // ],
        ),
          child: Row(
            children: [
              Container(
                height: 29,
                width: 29,
                decoration: BoxDecoration(
                  color: AppColors.light,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadow.withOpacity(0.1),
                      spreadRadius: 10,
                      blurRadius: 50,
                      blurStyle: BlurStyle.inner,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Image.asset('assets/$image'),
                ),
              ),
              GlowText(
                title,
                glowColor: Color.alphaBlend(
                    AppColors.background, AppColors.background),
                style: GoogleFonts.inter(
                  fontSize: 18,
                  color: AppColors.light,
                ),
              ),
            ],
          ),
        ),
      );

  }
}
