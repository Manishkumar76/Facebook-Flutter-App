import 'package:flutter/material.dart';

class CreatePostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
        actions: [
          IconButton(
            icon: Icon(Icons.post_add),
            onPressed: () {
              // Implement post creation logic
              // This could involve sending the post data to a server or updating local state
              // For simplicity, we'll just print a message in this example
              print('Post created!');
              Navigator.pop(context); // Close the create-post page after posting
            },
          ),
        ],
      ),
      body:const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // User information (you can customize based on your authentication system)
            Row(
              children: [
                CircleAvatar(
                  // Add user profile picture
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'MaxCoder', // Replace with the actual user's name
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Text input for the post content
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
