// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:projectflutter/Friends/friendsPage.dart';
import 'package:projectflutter/Video/videoPage.dart';
import 'package:projectflutter/ecommerce/shoppingPage.dart';
import 'package:projectflutter/facebookPages/Events.dart';
import 'package:projectflutter/facebookPages/FindFriends.dart';
import 'package:projectflutter/facebookPages/Groups.dart';
import 'package:projectflutter/facebookPages/Pages.dart';
import 'package:projectflutter/facebookPages/Reels.dart';
import 'package:projectflutter/facebookPages/creatorSupport.dart';
import 'package:projectflutter/facebookPages/dashboard.dart';
import 'package:projectflutter/facebookPages/explorePeoples.dart';
import 'package:projectflutter/facebookPages/feeds.dart';
import 'package:projectflutter/facebookPages/memories.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
            title: const Text(
              "Menu",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_rounded),
                iconSize: 30,
              )
            ],
          )
        ],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/Images/p5.jpg"),
                  ),
                  title: Text(
                    "Max Ranger",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("See your profile",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>const ShoppingPage()));
                              
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.store_mall_directory_rounded,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Marketplace",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeedsScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.feed_rounded,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Feeds",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ExplorePeopleScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.people_alt_rounded,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Explore People",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> FindFriendsScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.account_circle,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Find friends",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> GroupsScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.groups_rounded,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Groups",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=> VideosScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.ondemand_video_rounded,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Video",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MemoriesScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Memories",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.save,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Saved",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.dashboard,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "professional dashboard",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatorSupportScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Creator support",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.speaker_group,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Ad Center",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PagesScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.flag,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Pages",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ReelsScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.video_library_rounded,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Reels",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>EventsScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(185, 80),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: const SizedBox(
                              width: 185,
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.event_available_rounded,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    "Events",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        // InkWell(
                        //   onTap: (){},
                        //   child:const  Expanded(
                        //     child: Card(
                        //       child: SizedBox(
                        //         width: 185,
                        //         height: 80,
                        //         child: Padding(
                        //           padding:  EdgeInsets.all(8.0),
                        //           child: Column(
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //             children: [
                        //               Icon(Icons.event_available_rounded,color: Colors.blue,),
                        //               Text("Events",style: TextStyle(fontWeight: FontWeight.w700),)
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              ExpansionTile(
                title: const Text(
                  "Help & support",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                leading:const Icon(
                  Icons.help,
                  color: Color.fromRGBO(166, 192, 100, 266),
                ),
                children: [
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.help_center),
                      title:const  Text("Help Center",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.account_circle),
                      title:const  Text("Creator support",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.inbox_rounded),
                      title:const  Text("Support Inbox",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.report_problem_rounded),
                      title:const  Text("Report a problem",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.policy),
                      title:const  Text("Terms & Policies",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: const Text(
                  "Settings & privacy",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                leading:const Icon(
                  Icons.settings,
                  color: Color.fromRGBO(166, 192, 100, 266),
                ),
                children: [
                  Card(
                    child: ListTile(
                      onTap:(){
                        
                      },
                      leading: const  Icon(Icons.account_circle),
                      title:const  Text("Settings",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.privacy_tip),
                      title:const  Text("Privacy shortcuts",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.watch_later_outlined),
                      title:const  Text("Your time on Facebook",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.perm_device_info_rounded),
                      title:const  Text("Device requests",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.recent_actors_outlined),
                      title:const  Text("Recent and activity",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){
                        // Provider.of<ThemeModel>(context, listen: false).toggleTheme();
                      },
                      leading: const  Icon(Icons.dark_mode),
                      title:const  Text("Dark mode",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.language),
                      title:const  Text("Language",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap:(){

                      },
                      leading: const  Icon(Icons.key_outlined),
                      title:const  Text("Code Generator",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(400, 40),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                onPressed: () {},
                child: const Text(
                  "Log out",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


