import 'package:animals/screens/animal.dart';
import 'package:animals/screens/animal_detail.dart';
import 'package:animals/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animal App',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/animal_details': (context) => AnimalDetailsScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

