import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF085e55),
        accentColor: Color(0xFF1cc859),
      ),
      home: Home(),
    );
  }
}
