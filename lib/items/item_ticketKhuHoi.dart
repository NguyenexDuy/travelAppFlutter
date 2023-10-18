import 'package:flutter/material.dart';

class itemTicketKhuHoi extends StatefulWidget {
  const itemTicketKhuHoi({super.key});

  @override
  State<itemTicketKhuHoi> createState() => _itemTicketKhuHoiState();
}

class _itemTicketKhuHoiState extends State<itemTicketKhuHoi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Day la item khu hoi',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
