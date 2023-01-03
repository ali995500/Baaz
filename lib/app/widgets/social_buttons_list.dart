import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:site/app/widgets/social_buttons_items.dart';

class SocialButtonsList extends StatelessWidget {


  const SocialButtonsList({Key? key}) : super(key: key);
  void launchURL(String url) async => await launchUrl(
        Uri.parse('https://$url'),
        webOnlyWindowName: '_blank',
      );

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        const SizedBox(height: 16.5),
        SocialButtonsItems(
          title: 'Resume',
          image: 'stackoverflow.png',
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
