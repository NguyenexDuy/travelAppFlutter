import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/notification.dart';
import 'package:travel_app/pages/person_page.dart';
import 'package:travel_app/pages/ticket_page.dart';
import 'package:travel_app/values/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;
  final List<Widget> _page = [
    HomePage(),
    ticketPage(),
    noficationPage(),
    personPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: _page[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            padding: EdgeInsets.all(16),
            tabBackgroundColor: AppColors.textColor,
            backgroundColor: Colors.white,
            gap: 5,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.airplane_ticket,
                text: 'tiket',
              ),
              GButton(
                icon: Icons.notifications,
                text: 'notification',
              ),
              GButton(
                icon: Icons.person,
                text: 'person',
              ),
            ],
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
