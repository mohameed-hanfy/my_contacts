import 'package:flutter/material.dart';
import 'package:my_contacts/core/colors.dart';
import 'package:my_contacts/core/virablus.dart';
import 'package:my_contacts/widgets/socialMediaIcons.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContacts extends StatefulWidget {
  const MyContacts({super.key});

  @override
  State<MyContacts> createState() => _MyContactsState();
}

class _MyContactsState extends State<MyContacts> {
  
  var phoneNumber = Uri.parse('tel:201099747097');

  final Map myContacts = {
    'facebook': Uri.parse(
        "https://i.pinimg.com/564x/38/d5/12/38d51239fd61945405205c57575a4a7b.jpg"),
    'whatsapp': Uri.parse(
        "https://i.pinimg.com/564x/38/d5/12/38d51239fd61945405205c57575a4a7b.jpg"),
    'github': Uri.parse(
        "https://i.pinimg.com/564x/38/d5/12/38d51239fd61945405205c57575a4a7b.jpg"),
    'tiktok': Uri.parse(
        "https://i.pinimg.com/564x/38/d5/12/38d51239fd61945405205c57575a4a7b.jpg"),
    'yahoo': Uri.parse(
        "https://i.pinimg.com/564x/38/d5/12/38d51239fd61945405205c57575a4a7b.jpg"),
    'twitter': Uri.parse(
        "https://i.pinimg.com/564x/38/d5/12/38d51239fd61945405205c57575a4a7b.jpg"),
  };

  @override
  Widget build(BuildContext context) {

    void changeMyState(){
      setState(() {
        
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "My Contacts",
          style: TextStyle(color: kTextColor),
        ),
        leading: InkWell(
          child: const Padding(
            padding: EdgeInsets.only(top: 16, left: 8),
            child: Text(
              "my app",
              style: TextStyle(color: kTextColor),
            ),
          ),
          onTap: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                link == null
                    ? launchUrl(phoneNumber)
                    : launchUrl(link, mode: LaunchMode.externalApplication);
              },
              icon: icon == null
                  ? const Icon(
                      Icons.call,
                      color: Colors.white,
                    )
                  : Material(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        image: AssetImage('assets/$icon.png'),
                      ),
                    ),
            ),
          )
        ],
      ),
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
                    color: Colors.grey,
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
                        color: Colors.grey,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      // ignore: deprecated_member_use
                      launchUrl(phoneNumber);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: Icon(
                        Icons.call,
                        color: Colors.grey[900],
                      ),
                    ),
                  )
                ],
              ),
              GridView.builder(
                itemCount: myContacts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return socialMediaIcons(
                      socialIcons: myContacts.keys.toList()[index],
                      launchURL: myContacts.values.toList()[index],
                      changeState: changeMyState,
                      );
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
