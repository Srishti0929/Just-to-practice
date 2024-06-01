import 'package:flutter/material.dart';

class AnimalListScreen extends StatelessWidget {
  final List<String> animalsImages = [
    'assets/images/dog.jpg',
    'assets/images/cat.jpg',
    'assets/images/sparrow.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
    'assets/images/cat.jpg',
  ];

  final List<String> animals = [
    'Dog',
    'Cat',
    'Sparrow',
    'Pigeon',
    'Octopus',
    'Rhino',
    'Leopard',
    'Lion',
    'Jaguar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text('Animals',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                )),
          )),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              (index + 1).toString(),
              style: TextStyle(fontSize: 13),
            ),
            // title: Image.asset(animalsImages[index]),
            title: Text(animals[index]),

            onTap: () {
              Navigator.pushNamed(
                context,
                '/animal_details',
                arguments: animals[index],
              );
            },
          );
        },
      ),
    );
  }
}
