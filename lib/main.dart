import 'package:flutter/material.dart';
import 'package:my_contacts/core/colors.dart';
import 'package:my_contacts/core/my_provider.dart';
import 'package:my_contacts/my_contacts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: kBackgrouendColor,),
        debugShowCheckedModeBanner: false,
        home: const MyContacts(),
      ),
    );
  }
}
