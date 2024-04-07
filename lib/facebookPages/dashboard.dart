import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Professional Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Add notifications functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add settings functionality
            },
          ),
        ],
      ),
      body: DashboardContent(),
    );
  }
}

class DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProfileSummary(),
          SizedBox(height: 16.0),
          ProfessionalFeatures(),
          SizedBox(height: 16.0),
          RecentActivities(),
        ],
      ),
    );
  }
}

class ProfileSummary extends StatelessWidget {
  const ProfileSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage('https://placekitten.com/100/100'),
            ),
            SizedBox(height: 16.0),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('Web Developer'),
            SizedBox(height: 8.0),
            Text('Joined Facebook on January 1, 2022'),
          ],
        ),
      ),
    );
  }
}

class ProfessionalFeatures extends StatelessWidget {
  const ProfessionalFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Professional Features',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Work Experience'),
              subtitle: Text('5 years of experience'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Education'),
              subtitle: Text('Bachelor\'s in Computer Science'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Languages'),
              subtitle: Text('English, Spanish'),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentActivities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  Text(
              'Recent Activities',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            for (int i = 1; i <= 50; i++)
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage('https://placekitten.com/50/50'),
                ),
                title: Text('Post $i'),
                subtitle: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
              ),
          ],
        ),
      ),
    );
  }
}