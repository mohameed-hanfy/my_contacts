import 'package:flutter/material.dart';
import 'package:my_contacts/start.dart';
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
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => StartScreen(Url: Url)));
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
