import 'package:flutter/material.dart';

class GroupsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groups'),
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
      body: GroupsList(),
    );
  }
}

class GroupsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // Placeholder data for 5 groups
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            // Replace with group image
            backgroundImage: NetworkImage('https://placekitten.com/50/50'),
          ),
          title: Text('Group Name ${index + 1}'),
          subtitle: Text('Description of the group'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GroupDetailsScreen(groupIndex: index + 1),
              ),
            );
          },
        );
      },
    );
  }
}

class GroupDetailsScreen extends StatelessWidget {
  final int groupIndex;

  GroupDetailsScreen({required this.groupIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            // Replace with group image
            backgroundImage: NetworkImage('https://placekitten.com/100/100'),
          ),
          SizedBox(height: 16.0),
          Text(
            'Group Name $groupIndex',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            'Description of the group.',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Add logic to join/leave the group
            },
            child: Text('Join Group'),
          ),
        ],
      ),
    );
  }
}