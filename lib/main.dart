import 'package:flutter/material.dart';
import 'package:ny_times/screens/ny_times_most_popular_articles_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NY Times Most Popular Articles',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NyTimesMostPopularArticlesHomeScreen(title: 'NY Times Most Popular Articles'),
    );
  }
}

