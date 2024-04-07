import 'package:flutter/material.dart';

class ExplorePeopleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore People'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Add more options
            },
          ),
        ],
      ),
      body: ExplorePeopleList(),
    );
  }
}

class ExplorePeopleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with your actual data count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            // Replace with user profile image
            backgroundImage: NetworkImage('https://placekitten.com/50/50'),
          ),
          title: Text('User Name ${index + 1}'),
          subtitle: Text('Description or mutual friends'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileDetailsScreen(profileIndex: index + 1),
              ),
            );
          },
        );
      },
    );
  }
}

class ProfileDetailsScreen extends StatelessWidget {
  final int profileIndex;

  ProfileDetailsScreen({required this.profileIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Details'),
      ),
      body: Center(
        child: Text('Details for User $profileIndex'),
      ),
    );
  }
}