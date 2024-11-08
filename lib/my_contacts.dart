import 'package:flutter/material.dart';
import 'package:my_contacts/core/colors.dart';
import 'package:my_contacts/widgets/grid_my_contacts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContacts extends StatefulWidget {
  const MyContacts({super.key});

  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
  Map<String, String> socialMedia = {
    'facebook': 'https://www.youtube.com/watch?v=sKVkaya_iJY',
    'whatsapp': 'https://www.youtube.com/watch?v=sKVkaya_iJY',
    'github': 'https://www.youtube.com/watch?v=sKVkaya_iJY',
    'tiktok': 'https://www.youtube.com/watch?v=sKVkaya_iJY',
    'linkedin': 'https://www.youtube.com/watch?v=sKVkaya_iJY',
    'twitter': 'https://www.youtube.com/watch?v=sKVkaya_iJY',
    'viber': 'https://www.youtube.com/watch?v=sKVkaya_iJY',
    'yahoo': 'https://www.youtube.com/watch?v=sKVkaya_iJY',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: Colors.transparent,
          margin: const EdgeInsets.only(top: 80),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 100,
                // backgroundColor: Colors.grey[200],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Mohamed Hanfy",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "+201099747094",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      // ignore: deprecated_member_use
                      launchUrl(Uri.parse('tel:201099747097'));
                    },
                    // onDoubleTap: () {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //       const SnackBar(content: Text("+201099747094")));
                    // },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: kButtonColor),
                      child: Icon(
                        Icons.call,
                        color: kTextColor,
                      ),
                    ),
                  )
                ],
              ),
              gridMyContacts(socialMedia: socialMedia),
            ],
          ),
        ),
      ),
    );
  }
}
