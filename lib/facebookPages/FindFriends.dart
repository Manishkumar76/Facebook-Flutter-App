import 'package:flutter/material.dart';

class FindFriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Friends'),
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
      body: FindFriendsList(),
    );
  }
}

class FindFriendsList extends StatefulWidget {

  @override
  State<FindFriendsList> createState() => _FindFriendsListState();
}

class _FindFriendsListState extends State<FindFriendsList> {
  var request= "Add Friends";
  bool clicked=false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with your actual data count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            // Replace with user profile image
            backgroundImage: NetworkImage('https://placekitten.com/50/50$index'),
          ),
          title: Text('User Name ${index + 1}'),
          subtitle: Text('Mutual friends: ${index}'),
          trailing: ElevatedButton(
            onPressed: () {
              setState(() {
                clicked= !clicked;
                if(clicked==true){
                  request="Remove";
                }
                else{
                  request="Add Friends";
                }
              });
            },
            child:Text('$request'),
          ),
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