import 'package:flutter/material.dart';

class personPage extends StatefulWidget {
  const personPage({super.key});

  @override
  State<personPage> createState() => _personPageState();
}

class _personPageState extends State<personPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'PERSON',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
