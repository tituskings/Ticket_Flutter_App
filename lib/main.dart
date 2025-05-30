import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes.dart';
import 'package:ticket_app/bottom_nav_bar.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/home/widgets/all_hotels.dart';
import 'package:ticket_app/screens/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

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
        AppRoutes.homepage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => AllTicketsScreen(),
        AppRoutes.ticketScreen: (context) => TicketScreen(),
        AppRoutes.allHotel: (context) => AllHotels(),
        AppRoutes.hotelDetail: (context) => HotelDetail(),
      },
    );
  }
}
