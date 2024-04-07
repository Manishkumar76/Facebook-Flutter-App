import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: ListView(
        children: [
          EventCard(
            eventName: 'Flutter Workshop',
            location: 'Online',
            date: 'January 15, 2024',
            time: '2:00 PM',
          ),
          EventCard(
            eventName: 'Music Concert',
            location: 'City Park',
            date: 'February 5, 2024',
            time: '7:30 PM',
          ),
          EventCard(
            eventName: 'Tech Conference',
            location: 'Convention Center',
            date: 'March 20, 2024',
            time: '9:00 AM',
          ),
          // Add more EventCards as needed
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventName;
  final String location;
  final String date;
  final String time;

  const EventCard({
    required this.eventName,
    required this.location,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Navigate to event details screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventDetailsScreen(
                eventName: eventName,
                location: location,
                date: date,
                time: time,
              ),
            ),
          );
        },
        child: Column(
          children: [
            Image.network(
              'https://via.placeholder.com/150', // Replace with your event image URL
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Location: $location'),
                  Text('Date: $date'),
                  Text('Time: $time'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EventDetailsScreen extends StatelessWidget {
  final String eventName;
  final String location;
  final String date;
  final String time;

  const EventDetailsScreen({
    required this.eventName,
    required this.location,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(eventName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Location: $location'),
            Text('Date: $date'),
            Text('Time: $time'),
            // Add more event details as needed
          ],
        ),
      ),
    );
  }
}