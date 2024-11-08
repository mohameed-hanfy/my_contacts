import 'package:flutter/material.dart';
import 'package:my_contacts/widgets/socialMediaIcons.dart';


class gridMyContacts extends StatelessWidget {
  const gridMyContacts({
    super.key,
    required this.socialMedia,
  });

  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: socialMedia.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
      itemBuilder: (context, index) {
        // if (index < icons.length) {
        //   return socialMediaIcons(
        //     socialIcons: icons[index],
        //   );
        // } else {
        //   return socialMediaIcons(
        //     socialIcons: icons[index - icons.length],
        //   );
        // }
    
        return socialMediaIcons(
          socialIcons: socialMedia.keys.toList()[index],
          Url: socialMedia.values.toList()[index],
        );
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
    );
  }
}
