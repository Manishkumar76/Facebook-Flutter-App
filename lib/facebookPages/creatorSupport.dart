import 'package:flutter/material.dart';

class CreatorSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creator Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Facebook Creator Support',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Get help and support for your creator journey on Facebook.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement action when the button is pressed
              },
              child: Text('Contact Support'),
            ),
            SizedBox(height: 16),
            Text(
              'Common Support Topics:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            SupportTopicItem(title: 'Profile Setup'),
            SupportTopicItem(title: 'Monetization'),
            SupportTopicItem(title: 'Content Creation'),
            // Add more support topics as needed
          ],
        ),
      ),
    );
  }
}

class SupportTopicItem extends StatelessWidget {
  final String title;

  const SupportTopicItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        // Implement action when a support topic is tapped
      },
    );
  }
}