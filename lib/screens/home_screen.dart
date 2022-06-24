import 'package:flutter/material.dart';

// Demo screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: Text(
            'Home (Check the Profile tab!)',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
}
