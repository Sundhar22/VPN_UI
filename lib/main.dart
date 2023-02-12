import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vpn/colors/color.dart';
import 'package:vpn/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VPN',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.background,
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.manropeTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
