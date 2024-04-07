import 'package:flutter/material.dart';

import '../profiles/userprofilePage.dart';
import 'createPostPage.dart';

class PostBar extends StatelessWidget {

  PostBar({super.key,});
 var image="assets/Images/image1.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>userProfilePage(persondata:image ,)));
              },
              child: const CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage("assets/Images/image1.jpg"),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatePostPage()));
              },
              child: const Text(
                "What is in your mind ? ",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.photo_library,
                  color: Colors.lightGreen,
                )),
          ],
        ));
  }
}
