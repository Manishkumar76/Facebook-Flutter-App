import 'package:flutter/material.dart';

import '../Home/postpage.dart';

class profilepage extends StatelessWidget {
  final  person;
  const profilepage({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(person.FriendName) ,
      ),
       body: ListView(
          children: [
            SizedBox(
              height: 255,
              width: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Column(children: [
                      Container(
                        height: 170,
                        width: 400,
                        margin: const EdgeInsets.only(top: 10.0),
                        child:  ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image(
                            image: AssetImage(person.bannerImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ]),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 140.0,
                    child: SizedBox(
                      height: 120,
                      width: 120,
                      child:  ClipRRect(
                        borderRadius: const  BorderRadius.all(
                          Radius.circular(150),
                        ),
                        child: Image(
                          image: AssetImage(person.avatarImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child:  Text(
                person.FriendName,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => {},
                    child:const Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                         Icon(Icons.add_circle),
                         Text('Add Friend')
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                    ),
                    child: const Row(
                      children: [
                         Icon(Icons.message, color: Colors.black),
                         Text(
                          'Message',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () => {}, icon: const Icon(Icons.more_horiz))
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.book),
                       Text(
                        person.profession,
                        style:const TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: const Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.gamepad),
                      Text(
                        'Single',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: const Row(
                    children:  [
                      Icon(Icons.info),
                      Text(
                        'About',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Friends'),
                    TextButton(
                        onPressed: () => {}, child: const Text('Find Friends'))
                  ]),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black38,
            ),
            Post(),
          ],
        )

    );
  }
}
