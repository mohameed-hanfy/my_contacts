import 'package:flutter/material.dart';
import 'package:my_contacts/core/colors.dart';
import 'package:my_contacts/my_contacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: kBackgrouendColor,),
      debugShowCheckedModeBanner: false,
      home: const MyContacts(),
    );
  }
}
