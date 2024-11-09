import 'package:flutter/material.dart';
import 'package:my_contacts/core/colors.dart';
import 'package:my_contacts/core/virablus.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class socialMediaIcons extends StatefulWidget {
  String socialIcons;
  var launchURL;
  Function changeState;
  bool checked = false;
  socialMediaIcons({
    super.key,
    required this.socialIcons,
    required this.launchURL,
    required this.changeState,
  });

  @override
  State<socialMediaIcons> createState() => _socialMediaIconsState();
}

class _socialMediaIconsState extends State<socialMediaIcons> {
  double? radius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        borderRadius: BorderRadius.circular(radius == null ? 50 : radius!),
        color: kTextColor,
        child: InkWell(
          onDoubleTap: () {
            link = widget.launchURL;
            icon = widget.socialIcons;
            widget.changeState();
          },
          onTap: () {
            radius == null
                ? {radius = 20, setState(() {})}
                : {radius = 50, setState(() {})};
            setState(() {});
            launchUrl(widget.launchURL);
          },
          child: Image(
            image: AssetImage(
              'assets/${widget.socialIcons}.png',
            ),
            height: 40,
          ),
        ),
      ),
    );
  }
}
