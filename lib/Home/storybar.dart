import 'package:flutter/material.dart';

import '../models/storymodels.dart';
// import 'package:projectflutter/models/storymodels.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    //
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            Container(
              height: 230,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.black),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () {
                     
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 140,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0))),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                            child: Image(
                              image: AssetImage("assets/Images/image1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          "Add to story",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 30.0,
                      left: 40.0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_rounded,
                          color: Colors.blue,
                        ),
                        iconSize: 50,
                      ))
                ],
              ),
            ),
            for (var i = 0; i < storyData.length; i++) ...[
              Container(
                height: 230,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.black),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: () => storyData[i].ontab,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 228,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                image: AssetImage(storyData[i].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 20,
                        left: 18,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image: AssetImage(storyData[i].Avatar),
                              ),
                            ),
                          ),
                        )),
                    Positioned(
                        bottom: 10.0,
                        left: 18,
                        child: Text(
                          storyData[i].userName,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}






// Flexible(
// child: ListView.builder(
// itemBuilder: (context, index) {
// return SizedBox(
// height: 230,
// width: 140,
// child: Stack(
// children: [
// Padding(
// padding: const EdgeInsets.all(6.0),
// child: Container(
// height: 230,
// width: 140,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: Colors.grey.shade500,
// border: Border.all(color: Colors.black)),
// child: ClipRRect(
// borderRadius: BorderRadius.circular(20),
// child: Image.asset(
// images[index],
// fit: BoxFit.fill,
// width: 120,
// ))),
// ),
// Padding(
// padding: const EdgeInsets.all(15.0),
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(
// 50,
// ),
// color: Colors.blue,
// ),
// child: CircleAvatar(
// backgroundImage: AssetImage(images[index]),
// ),
// ),
// ),
// const Positioned(
// top: 200,
// left: 25,
// child: Text(
// "Max Ranger",
// style: TextStyle(color: Colors.white),
// ))
// ],
// ),
// );
// },
// itemCount: images.length,
// scrollDirection: Axis.horizontal,
// // reverse: true,
// shrinkWrap: true,
// ),
// ),