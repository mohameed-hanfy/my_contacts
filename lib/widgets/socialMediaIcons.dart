import 'package:flutter/material.dart';
import 'package:my_contacts/core/colors.dart';
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
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(kButtonColor),
                  ),
                  onPressed: () {
                    launchUrl(Uri.parse(Url));
                  },
                  child: Text(
                    'Start $socialIcons',
                    style:const TextStyle(color: kTextColor),
                  ),
                );
              });
        },
        child: ClipRRect(
          child: Image.asset(
            'assets/$socialIcons.png',
            height: 60,
          ),
        ),
      ),
    );
  }
}
