// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget{
  const NotificationPage({Key?key}):super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NotificationPageState createState()=>_NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: NestedScrollView(
        headerSliverBuilder: ((context,innerBoxIsScrolled)=>[
          SliverAppBar(
            scrolledUnderElevation: 0.0,
            floating: true,
            snap: true,
            title: const Text(
              "Notifications",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            actions: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  child:IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
              )
            ],
          ),
        ]),
        body: ListView(
    children: [
    NotificationItem(
    avatarUrl: 'https://placekitten.com/50/50',
    userName: 'John Doe',
    notificationContent: 'liked your post.',
    ),
    NotificationItem(
    avatarUrl: 'https://placekitten.com/50/51',
    userName: 'Jane Smith',
    notificationContent: 'commented on your photo.',
    ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/54',
        userName: 'Rajan',
        notificationContent: 'requested you to be a friend.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/52',
        userName: 'Manish Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/56',
        userName: 'Rajandeep',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/59',
        userName: 'Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/50',
        userName: 'John Doe',
        notificationContent: 'liked your post.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/51',
        userName: 'Jane Smith',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/54',
        userName: 'Rajan',
        notificationContent: 'requested you to be a friend.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/52',
        userName: 'Manish Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/56',
        userName: 'Rajandeep',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/59',
        userName: 'Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/50',
        userName: 'John Doe',
        notificationContent: 'liked your post.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/51',
        userName: 'Jane Smith',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/54',
        userName: 'Rajan',
        notificationContent: 'requested you to be a friend.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/52',
        userName: 'Manish Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/56',
        userName: 'Rajandeep',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/59',
        userName: 'Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/50',
        userName: 'John Doe',
        notificationContent: 'liked your post.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/51',
        userName: 'Jane Smith',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/54',
        userName: 'Rajan',
        notificationContent: 'requested you to be a friend.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/52',
        userName: 'Manish Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/56',
        userName: 'Rajandeep',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/59',
        userName: 'Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/50',
        userName: 'John Doe',
        notificationContent: 'liked your post.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/51',
        userName: 'Jane Smith',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/54',
        userName: 'Rajan',
        notificationContent: 'requested you to be a friend.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/52',
        userName: 'Manish Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/56',
        userName: 'Rajandeep',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/59',
        userName: 'Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/50',
        userName: 'John Doe',
        notificationContent: 'liked your post.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/51',
        userName: 'Jane Smith',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/54',
        userName: 'Rajan',
        notificationContent: 'requested you to be a friend.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/52',
        userName: 'Manish Kumar',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/56',
        userName: 'Rajandeep',
        notificationContent: 'commented on your photo.',
      ),
      NotificationItem(
        avatarUrl: 'https://placekitten.com/50/59',
        userName: 'Kumar',
        notificationContent: 'commented on your photo.',
      ),
    // Add more NotificationItem widgets as needed
    ],
    ),
     )
    );

  }
}

class NotificationItem extends StatelessWidget {
  final String avatarUrl;
  final String userName;
  final String notificationContent;

  NotificationItem({
    required this.avatarUrl,
    required this.userName,
    required this.notificationContent,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: NetworkImage(avatarUrl),
      ),
      title: Text(
        '$userName $notificationContent',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('2 hours ago'), // Replace with the actual timestamp
      onTap: () {
        // Implement navigation or specific action when tapping on a notification
        print('Notification tapped: $userName $notificationContent');
      },
    );
  }
}
