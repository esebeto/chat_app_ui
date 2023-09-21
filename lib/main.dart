import 'package:chat_app_ui/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New WhatsApp UI',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent),
      ),
      home: const HomePage(),
    );
  }
}
