import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
       child: Text('Inició Session en \nHOME', style: TextStyle(fontSize: 20),))
    );
  }
}