// ignore: file_names
import 'package:flutter/material.dart';

class PagesScreen extends StatelessWidget {
  const PagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pages'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Add search functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Add more options
            },
          ),
        ],
      ),
      body: const PageList(),
    );
  }
}

class PageList extends StatelessWidget {

  const PageList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with your actual data count
      itemBuilder: (context, index) {
        return ListTile(
          leading: const CircleAvatar(
            // Replace with page profile image
            backgroundImage: NetworkImage('https://placekitten.com/50/'),
          ),
          title: Text('Page Name ${index + 1}'),
          subtitle: const Text('Description of the page'),
          // trailing: FlatButton(
          //   onPressed: () {
          //     // Add logic for page actions
          //   },
          //   child: Text(
          //     'Like',
          //     style: TextStyle(color: Colors.blue),
          //   ),
          // ),
          onTap: () {
            Navigator.pushNamed(context, '/pageDetails', arguments: index + 1);
          },
        );
      },
    );
  }
}

class FlatButton {
}

class PageDetailsScreen extends StatelessWidget {
  const PageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int pageIndex = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Details'),
      ),
      body: Center(
        child: Text('Details for Page $pageIndex'),
      ),
    );
  }
}