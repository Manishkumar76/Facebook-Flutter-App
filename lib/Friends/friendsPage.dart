// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:projectflutter/profiles/profilePage.dart';
import '../models/friendsmodel.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
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
              "Friends",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  child:IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded))
              )
            ],
          ),
        ]),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
      Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: (){},
                    child:const Text("Friend requests",style: TextStyle(color: Colors.black87),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: (){},
                    child:const Text("Your friends",style: TextStyle(color: Colors.black87),)
                ),
              ),
            ]),
          const Padding(
             padding:  EdgeInsets.all(8.0),
             child: Divider(
               thickness: 1,
               color: Colors.grey,
             ),
           ),

           Padding(
              padding:const  EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child:const Text("People You May Know",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
              ),
            ),
            for (var i = 0; i < friendData.length; i++) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context)=> profilepage(person:friendData[i])));
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(friendData[i].avatarImage),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            friendData[i].FriendName,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () => friendData[i].add_friendPressed,
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                const Color.fromARGB(255, 48, 80, 239),
                                shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(21))),
                            child: const Text(
                              "Add Friend",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () => friendData[i].removePressed,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(21))),
                            child: const Text("Remove",
                                style: TextStyle(color: Colors.black)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
    ],),
        ),
      ),

    );
  }
}
