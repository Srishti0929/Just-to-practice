import 'package:animals/screens/animal.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => AnimalListScreen()),
      );
    });

    return Scaffold(
     backgroundColor: Colors.white,
     body: Center(child: Image.asset('assets/images/animals.jpg'
     , height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,)),
    );
  }
}
