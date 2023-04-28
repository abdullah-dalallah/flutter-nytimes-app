import 'package:flutter/material.dart';
import 'package:ny_times/screens/ny_times_most_popular_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NY Times Most Popular',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NyTimesMostPopularHomeScreen(title: 'NY Times Most Popular'),
    );
  }
}

