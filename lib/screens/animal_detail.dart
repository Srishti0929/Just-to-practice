import 'package:flutter/material.dart';

class AnimalDetailsScreen extends StatelessWidget {
  final Map<String, String> animalDetails = {
    'Dog': 'Dogs are loyal companions to humans.',
    'Cat': 'Cats are independent and mysterious creatures.',
    'Sparrow': 'Sparrows are small, social birds often found in urban areas.',
    'Pigeon': 'Pigeons are known for their ability to navigate long distances.',
    'Octopus': 'Octopuses are highly intelligent marine creatures.',
    'Rhino': 'Rhinos are large herbivorous mammals with distinctive horns.',
    'Leopard': 'Leopards are agile big cats known for their spotted coats.',
    'Lion': 'Lions are majestic predators, often referred to as the "king of the jungle."',
    'Jaguar': 'Jaguars are powerful big cats native to the Americas.',
  };

  final Map<String, String> animalImages = {
    'Dog': 'assets/images/dog.jpg',
    'Cat': 'assets/images/cat.jpg',
    'Sparrow': 'assets/images/sparrow.jpg',
    'Pigeon': 'assets/images/pigeon.jpg', 
    'Octopus': 'assets/images/octopus.jpg', 
    'Rhino': 'assets/images/rhino.jpg', 
    'Leopard': 'assets/images/leopard.jpg', 
    'Lion': 'assets/images/lion.jpg', 
    'Jaguar': 'assets/images/jaguar.jpg', 
  };

  @override
  Widget build(BuildContext context) {
    final String? animal =
        ModalRoute.of(context)?.settings.arguments as String?;

    String details = animalDetails[animal ?? ''] ?? 'Details not available';
    String imagePath = animalImages[animal ?? ''] ?? '';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Animal Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView( scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  // width: 200, // Adjust as needed
                  // height: 200, // Adjust as needed
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  details,
                  style: const TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
