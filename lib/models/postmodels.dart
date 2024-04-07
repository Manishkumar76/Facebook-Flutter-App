import 'package:flutter/material.dart';

class PostModel {
  final VoidCallback avatarONpressed;
  final String avatarimage;
  final String name;

  final String time;
  final VoidCallback moreOnPressed;
  final String postTitle;
  // ignore: non_constant_identifier_names
  final String PostImage;
  // ignore: non_constant_identifier_names
  final VoidCallback LikeOnPressed;
  final VoidCallback commentOnPressed;
  // ignore: non_constant_identifier_names
  final VoidCallback ShareOnPressed;

  PostModel(
      {required this.avatarONpressed,
        required this.avatarimage,
        required this.name,
        required this.time,
        required this.moreOnPressed,
        required this.postTitle,
        // ignore: non_constant_identifier_names
        required this.PostImage,
        // ignore: non_constant_identifier_names
        required this.LikeOnPressed,
        required this.commentOnPressed,
        // ignore: non_constant_identifier_names
        required this.ShareOnPressed});
}

List<PostModel> postData = [

  PostModel(avatarONpressed: ()=>{},
      avatarimage: "assets/Images/p8.jpg",
      name: "Majnu Bhai",
      time: "5m ago",
      moreOnPressed: ()=>{},
      postTitle: "Something about post",
      PostImage: "assets/Images/19.jpg",
      LikeOnPressed: ()=>{},
      commentOnPressed: ()=>{},
      ShareOnPressed: ()=>{}
  ),
  PostModel(avatarONpressed: ()=>{},
      avatarimage: "assets/Images/p9.jpg",
      name: "Bhai",
      time: "5m ago",
      moreOnPressed: ()=>{},
      postTitle: "Something about post",
      PostImage: "assets/Images/9.jpg",
      LikeOnPressed: ()=>{},
      commentOnPressed: ()=>{},
      ShareOnPressed: ()=>{}
  ),
  PostModel(avatarONpressed: ()=>{},
      avatarimage: "assets/Images/p1.jpg",
      name: "Rani",
      time: "5m ago",
      moreOnPressed: ()=>{},
      postTitle: "Something about post",
      PostImage: "assets/Images/11.jpg",
      LikeOnPressed: ()=>{},
      commentOnPressed: ()=>{},
      ShareOnPressed: ()=>{}
  ),
  PostModel(avatarONpressed: ()=>{},
      avatarimage: "assets/Images/p12.jpg",
      name: "Manoj",
      time: "5m ago",
      moreOnPressed: ()=>{},
      postTitle: "Something about post",
      PostImage: "assets/Images/12.jpg",
      LikeOnPressed: ()=>{},
      commentOnPressed: ()=>{},
      ShareOnPressed: ()=>{}
  ),
  PostModel(avatarONpressed: ()=>{},
      avatarimage: "assets/Images/p13.jpg",
      name: "Rajan",
      time: "5m ago",
      moreOnPressed: ()=>{},
      postTitle: "Something about post",
      PostImage: "assets/Images/13.jpg",
      LikeOnPressed: ()=>{},
      commentOnPressed: ()=>{},
      ShareOnPressed: ()=>{}
  ),
  PostModel(avatarONpressed: ()=>{},
      avatarimage: "assets/Images/p14.jpg",
      name: "Gurpreet",
      time: "5m ago",
      moreOnPressed: ()=>{},
      postTitle: "Something about post",
      PostImage: "assets/Images/14.jpg",
      LikeOnPressed: ()=>{},
      commentOnPressed: ()=>{},
      ShareOnPressed: ()=>{}
  ),
  PostModel(avatarONpressed: ()=>{},
      avatarimage: "assets/Images/p15.jpg",
      name: "Manish Tripathi",
      time: "5m ago",
      moreOnPressed: ()=>{},
      postTitle: "Something about post",
      PostImage: "assets/Images/15.jpg",
      LikeOnPressed: ()=>{},
      commentOnPressed: ()=>{},
      ShareOnPressed: ()=>{}
  ),
   PostModel(avatarONpressed: ()=>{},
      avatarimage: "assets/Images/p15.jpg",
      name: "Ranger",
      time: "5m ago",
      moreOnPressed: ()=>{},
      postTitle: "Something about post",
      PostImage: "assets/Images/16.jpg",
      LikeOnPressed: ()=>{},
      commentOnPressed: ()=>{},
      ShareOnPressed: ()=>{}
  ),
 
];