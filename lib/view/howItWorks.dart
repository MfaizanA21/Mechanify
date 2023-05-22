import 'package:flutter/material.dart';

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How It Works'),
      ),
      body: SingleChildScrollView(
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.teal.shade100, Colors.teal.shade300],
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 24.0), // Add gap between first question and top
                  _buildStep(
                    '1. Find a Mechanic',
                    'Browse through our list of experienced mechanics and find the one that suits your needs. '
                        'You can view their profiles, contact information, price rates, services offered, and locations.',
                    Icons.search, // Add search icon
                  ),
                  const SizedBox(height: 48.0), // Increased gap between questions
                  _buildStep(
                    '2. Book an Appointment',
                    'Once you have found a mechanic you want to hire, simply book an appointment with them. '
                        'You can choose a date and time that works best for you.',
                    Icons.calendar_today, // Add calendar icon
                  ),
                  const SizedBox(height: 48.0), // Increased gap between questions
                  _buildStep(
                    '3. Get Your Vehicle Fixed',
                    'On the scheduled appointment date, the mechanic will come to your location and fix your vehicle. '
                        'They will bring the necessary tools and equipment to provide the service you requested.',
                    Icons.build, // Add build icon
                  ),
                  const SizedBox(height: 48.0), // Increased gap between questions
                  _buildStep(
                    '4. Pay for the Service',
                    'Once the service is completed, you can pay the mechanic directly. '
                        'We accept various payment methods to ensure a convenient and secure transaction.',
                    Icons.payment, // Add payment icon
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStep(String title, String description, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 24.0,
              color: Colors.white,
            ),
            const SizedBox(width: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Text(
          description,
          style: const TextStyle(
            fontSize
                : 16.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}