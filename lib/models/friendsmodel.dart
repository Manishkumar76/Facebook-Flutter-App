


import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:projectflutter/profiles/profilePage.dart';

class  FriendModel {
  final VoidCallback add_friendPressed;
  final VoidCallback removePressed;
  // final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String FriendName;
  final String bannerImage;
  final String profession;
  FriendModel(
  {
    required this.add_friendPressed,
    required this.avatarImage,
    // required this.avatarOnPressed,
    required this.FriendName,
    required this.removePressed,
    required this.bannerImage,
    required this.profession,
}
      );
}

List <FriendModel> friendData=[

  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p12.jpg",
     // // avatarOnPressed: (){
     //  },
      FriendName: "Rajan ",
      removePressed: (){},
     bannerImage:'assets/Images/11.jpg',
    profession: 'Student at GZSCCET,Bathinda',
  ),

  FriendModel(add_friendPressed: (){

  },
      avatarImage: "assets/Images/p2.jpg",
      // avatarOnPressed: (){
      //
      // },
      FriendName: "rohan ",
      removePressed: (){
           
      },
    bannerImage:'assets/Images/12.jpg',
    profession: 'Google Softwar Developer',),

  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p1.jpg",
  //     avatarOnPressed: (){
  // },
      FriendName: "Tanu Soni ",
      removePressed: (){},
    bannerImage:'assets/Images/13.jpg',
    profession: 'Facebook Story Manager',),

  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p11.jpg",
     
      FriendName: "Suresh Kumar",
      removePressed: (){},
    bannerImage:'assets/Images/14.jpg',
    profession: 'Student',),

  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p13.jpg",
     
      FriendName: "Mahesh ",
      removePressed: (){},
    bannerImage:'assets/Images/15.jpg',
    profession: 'Work at Home',),

  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p14.jpg",
     
      FriendName: "Rajan ",
      removePressed: (){},
    bannerImage:'assets/Images/16.jpg',
    profession: 'Developer at TCS',),

  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p10.jpg",
     
      FriendName: "Rani ",
      removePressed: (){},
    bannerImage:'assets/Images/17.jpg',
    profession: 'CEO of Microsoft',),

  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p9.jpg",
     
      FriendName: "Tanisha ",
      removePressed: (){},
    bannerImage:'assets/Images/18.jpg',
    profession: 'Farmer',),
  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p9.jpg",
     
      FriendName: "Rajni ",
      removePressed: (){},
    bannerImage:'assets/Images/19.jpg',
    profession: 'Professor at GZSCCET,Bathinda.',),
  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p8.jpg",
     
      FriendName: "Switta ",
      removePressed: (){},
    bannerImage:'assets/Images/20.jpg',
    profession: 'Doctor',),
  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p7.jpg",
     
      FriendName: "Suman ",
      removePressed: (){},
    bannerImage:'assets/Images/21.jpg',
    profession: 'Bike Rider',),
  FriendModel(add_friendPressed: (){},
      avatarImage: "assets/Images/p6.jpg",
     
      FriendName: "Saloni ",
      removePressed: (){},
    bannerImage:'assets/Images/22.jpg',
    profession: 'Car Machenics',),

];
