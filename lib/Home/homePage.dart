import 'package:flutter/material.dart';
import 'package:projectflutter/Home/postbar.dart';
import 'package:projectflutter/Home/postpage.dart';
import 'package:projectflutter/Home/searchingPage.dart';
import 'package:projectflutter/Home/storybar.dart';

import 'createPostPage.dart';

class HomePage extends StatefulWidget {
  const HomePage( {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: ((context, innerBoxIsScrolled) => [
              SliverAppBar(
                scrolledUnderElevation: 0.0,
                floating: true,
                snap: true,
                title: const Text("facebook",
                    style: TextStyle(
                        color: Color.fromARGB(255, 48, 137, 239),
                        fontSize: 30,
                        fontWeight: FontWeight.w900)),
                actions: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatePostPage()));
                    },
                    icon: const Icon(Icons.add_circle),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchingPage()));
                    },
                    icon: const Icon(Icons.search_rounded),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.chat_outlined))
                ],
              ),
            ]),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              PostBar(), 
            const  Divider(
                thickness: 6,
                color: Colors.grey,
              ),
             const StoryBar(),
            const  Divider(
                thickness: 6,
                color: Colors.grey,
              ),
             const Post(),
            ],
          ),
        ),
      ),
    );
  }
}
