import 'package:flutter/material.dart';
import './chatscreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
        backgroundColor: Color(0xFF075E54),
      ),
      body: ChatScreen(),
    );
  }
}