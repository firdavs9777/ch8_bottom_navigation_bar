import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Icon(
        Icons.sentiment_satisfied,
        size: 120.0,
        color: Colors.lightGreen,
      ),
    ));
  }
}
