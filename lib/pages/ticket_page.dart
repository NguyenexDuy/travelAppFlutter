import 'package:flutter/material.dart';

class ticketPage extends StatefulWidget {
  const ticketPage({super.key});

  @override
  State<ticketPage> createState() => _ticketPageState();
}

class _ticketPageState extends State<ticketPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'TICKET',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
