// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback ontab;
  final String image;
  final String userName;
  final String Avatar;

StoryModel({
    required this.Avatar,
    required this.image,
    required this.userName,
    required this.ontab,

  });
}

List<StoryModel> storyData = [
  StoryModel(
      ontab: () {
       
      },
      image: "assets/Images/4.jpg",
      userName: 'Max Ranger',
  Avatar: "assets/Images/p3.jpg"),

 StoryModel
 (
      ontab: () {
        
      },
      image: "assets/Images/2.jpg",
      userName: 'Max Coder',
      Avatar: "assets/Images/p2.jpg"),
 StoryModel
 (
      ontab: () {
        
      },
      image: "assets/Images/p5.jpg",
      userName: 'Ankul Kuntal',
      Avatar: "assets/Images/p4.jpg"),
  StoryModel(
      ontab: () {
        
      },
      image: "assets/Images/11.jpg",
      userName: 'Gurwinder Singh',
      Avatar: "assets/Images/p5.jpg"),
  StoryModel(
      ontab: () {
        
      },
      image: "assets/Images/10.jpg",
      userName: 'rahul',
      Avatar: "assets/Images/p1.jpg"),
  StoryModel(
      ontab: () {
        
      },
      Avatar: "assets/Images/p9.jpg",
      image: "assets/Images/23.jpg",
      userName: 'rashmika'),
  StoryModel(
      ontab: () {
        
      },
      Avatar: "assets/Images/p1.jpg",
      image: "assets/Images/1.jpg",
      userName: 'ranveer'),
  StoryModel(
      ontab: () {
        
      },
      Avatar: "assets/Images/p2.jpg",
      image: "assets/Images/2.jpg",
      userName: 'Tanisha'),
  StoryModel(
      ontab: () {
        
      },
      Avatar: "assets/Images/p4.jpg",
      image: "assets/Images/3.jpg",
      userName: 'ManSaab'),

    ];

