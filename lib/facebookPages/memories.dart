import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MemoriesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> memories = [
    {
      'id': 1,
      'title': 'Amazing Vacation',
      'date': 'June 10, 2023',
      'image': 'https://placekitten.com/300/200',
    },
    // Add more memories with different titles, dates, and images
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Memories'),
        actions: [
          IconButton(
            icon:const Icon(Icons.search),
            onPressed: () {
              // Add search functionality
            },
          ),
          IconButton(
            icon:const Icon(Icons.more_vert),
            onPressed: () {
              // Add more options
            },
          ),
        ],
      ),
      body: MemoryList(memories: memories),
    );
  }
}

class MemoryList extends StatelessWidget {
  final List<Map<String, dynamic>> memories;

  const MemoryList({super.key, required this.memories});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: memories.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(memories[index]['image']),
            ),
            title: Text(memories[index]['title']),
            subtitle: Text(memories[index]['date']),
            onTap: () {
              Navigator.pushNamed(context, '/memoryDetails', arguments: memories[index]);
            },
          ),
        );
      },
    );
  }
}

class MemoryDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> memory = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Memory Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(memory['image']),
          SizedBox(height: 16.0),
          Text(
            memory['title'],
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            memory['date'],
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          // Add more details about the memory
        ],
      ),
    );
  }
}