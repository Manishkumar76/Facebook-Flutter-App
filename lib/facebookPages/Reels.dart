import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reels'),
      ),
      body: ListView(
        children: const [
          ReelItem(
            username: 'user1',
            caption: 'Exciting moments!',
            imageUrl: 'https://example.com/image6.jpg',
          ),
          ReelItem(
            username: 'user2',
            caption: 'Dance party!',
            imageUrl: 'https://example.com/image2.jpg',
          ),
          ReelItem(
            username: 'user3',
            caption: 'Travel vibes',
            imageUrl: 'https://example.com/image3.jpg',
          ),
          // Add more ReelItems as needed
        ],
      ),
    );
  }
}

class ReelItem extends StatelessWidget {
  final String username;
  final String caption;
  final String imageUrl;

  const ReelItem({
    required this.username,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@$username',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(caption),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}