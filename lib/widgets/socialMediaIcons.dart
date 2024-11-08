import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class socialMediaIcons extends StatelessWidget {
  String socialIcons;
  String Url;
  socialMediaIcons({
    super.key,
    required this.socialIcons,
    required this.Url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          launchUrl(Uri.parse(Url), mode: LaunchMode.externalApplication);
        },
        child: ClipRRect(
          child: Image.asset(
            'assets/$socialIcons',
            height: 60,
          ),
        ),
      ),
    );
  }
}
