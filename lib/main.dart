import 'package:flutter/material.dart';
import 'package:simplem_assignment/screens/bottom_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF060727),
        scaffoldBackgroundColor: const Color(0xFF060727),
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: const Color(0xFF0F1440),
            ),
      ),
      home: const BottomTabBar(),
    );
  }
}
