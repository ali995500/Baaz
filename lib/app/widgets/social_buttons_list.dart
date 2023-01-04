import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:site/app/core/app_colors.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:site/app/widgets/social_buttons_items.dart';



class SocialButtonsList extends StatelessWidget {
  const SocialButtonsList({Key? key}) : super(key: key);

  void launchURL(String url) async =>
      await launchUrl(
        Uri.parse('https://$url'),
        webOnlyWindowName: '_blank',
      );

  @override
  Widget build(BuildContext context) {
    final btnKey = GlobalKey<State>();



    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/OIP.png',
                  width: 29,
                  height: 29,
                )),
            const SizedBox(
              width: 16.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 2,
                    color: AppColors.shadow
                  ),
                ]
              ),
              child: ElevatedButton(
                key: btnKey,

                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  shape: MaterialStateProperty.all(
                    BeveledRectangleBorder(
                        side: const BorderSide(
                            width: 1,
                            color: AppColors.light,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                onPressed: () {},
                onHover: (value) {
                  if (value) {

                  }
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 32.0, right: 32.0, top: 8.0, bottom: 8.0),

                  child: GlowText(
                    'Glow',
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16.5),
        SocialButtonsItems(
          title: 'Resume',
          image: 'OIP.png',
          onTap: () => launchURL('resume.io/r/OtpY4DxXm/'),
        ),
        const SizedBox(height: 16.5),
        SocialButtonsItems(
          title: 'GitHub',
          image: 'github.png',
          onTap: () => launchURL('github.com/arbaazaj/'),
        ),
        const SizedBox(height: 16.5),
        SocialButtonsItems(
          title: 'LinkedIn',
          image: 'linkedin.png',
          onTap: () => launchURL('linkedin.com/in/arbaazaj/'),
        ),
        const SizedBox(height: 16.5),
        SocialButtonsItems(
          title: 'Discord',
          image: 'discord.png',
          onTap: () => launchURL('discordapp.com/users/406074089011281921'),
        ),
        const SizedBox(height: 16.5),
        SocialButtonsItems(
          title: 'Udemy',
          image: 'udemy.png',
          onTap: () => launchURL('udemy.com/user/luis-felipe-de-castro-sales/'),
        ),
        const SizedBox(height: 16.5),
        SocialButtonsItems(
          title: 'Instagram',
          image: 'instagram.png',
          onTap: () => launchURL('instagram.com/arbaazaj/'),
        ),
        const SizedBox(height: 16.5),
      ],
    );
  }
}
