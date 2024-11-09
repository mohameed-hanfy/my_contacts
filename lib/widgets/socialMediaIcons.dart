import 'package:flutter/material.dart';
import 'package:my_contacts/core/colors.dart';
import 'package:my_contacts/core/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class socialMediaIcons extends StatefulWidget {
  String socialIcons;
  var launchURL;
  bool checked = false;
  socialMediaIcons({
    super.key,
    required this.socialIcons,
    required this.launchURL,
  });

  @override
  State<socialMediaIcons> createState() => _socialMediaIconsState();
}

class _socialMediaIconsState extends State<socialMediaIcons> {
  double? radius;

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, getValue, child) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          borderRadius: BorderRadius.circular(radius == null ? 50 : radius!),
          color: kTextColor,
          child: InkWell(
            onDoubleTap: () {
              getValue.setMyIcon(widget.socialIcons);
              getValue.setMyLink(widget.launchURL);

              // getValue.link = widget.launchURL;
              // getValue.icon = widget.socialIcons;
              getValue.notifyListeners();
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
      ),
    );
  }
}
