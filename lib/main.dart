import 'package:flutter/material.dart';
import 'package:ticket_app/bottom_nav_bar.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: BottomNavBar(),
      routes: {
        "/": (context) => BottomNavBar(),
        "/all_tickets": (context) => AllTicketsScreen()
      },
    );
  }
}
