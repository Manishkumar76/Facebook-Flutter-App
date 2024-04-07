import 'package:flutter/material.dart';

import '../Home/postpage.dart';

class userProfilePage extends StatefulWidget {
  final persondata;
  const userProfilePage({super.key, required this.persondata});

  @override
  State<userProfilePage> createState() => _userProfilePageState(person: persondata);
}

class _userProfilePageState extends State<userProfilePage> {
  final person ;
   _userProfilePageState( {required this.person});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>[
         const    SliverAppBar(
              title:  Text("Profile"),
              floating: true,

            ),
          ], body: ListView(
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
                      child: const ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image(
                          image: AssetImage('assets/Images/10.jpg'),
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
                        image: AssetImage(person),
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
              "Maxcoder",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.add_circle),
                      const Text('Add to Story')
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.edit, color: Colors.black),
                      const Text(
                        'Edit Profile',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[400],
                  ),
                ),
                IconButton(
                    onPressed: () => {}, icon: Icon(Icons.more_horiz))
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.book),
                    const Text(
                      'Devloper at thinkNext ',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.gamepad),
                    const Text(
                      'Single',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: const [
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
            margin: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Friends'),
                  TextButton(
                      onPressed: () => {}, child: Text('Find Friends'))
                ]),
          ),
          Divider(
            thickness: 1,
            color: Colors.black38,
          ),
          Post(),
        ],
      )
      ),
    );
  }
}
