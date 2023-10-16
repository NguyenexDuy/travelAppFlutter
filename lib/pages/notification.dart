import 'package:flutter/material.dart';

class noficationPage extends StatefulWidget {
  const noficationPage({super.key});

  @override
  State<noficationPage> createState() => _noficationPageState();
}

class _noficationPageState extends State<noficationPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'NOTIFICATION',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
