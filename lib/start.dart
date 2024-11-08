import 'package:flutter/material.dart';
import 'package:my_contacts/core/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class StartScreen extends StatelessWidget {
  String Url;
  StartScreen({super.key, required this.Url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgrouendColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          
          style:const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(kButtonColor) ,
            
          ),
          onPressed: () {
            launchUrl(Uri.parse(Url));
          },
          child:const Text("Start social Media",style: TextStyle(color: kTextColor),),
        ),
      ),
    );
  }
}
