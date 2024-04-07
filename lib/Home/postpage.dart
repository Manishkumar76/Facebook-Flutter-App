// import 'package:flutter/cupertino.dart';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/postmodels.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
       
      children: [
        for (var i = 0; i < postData.length; i++) ...[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(postData[i].avatarimage),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postData[i].name,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text(
                            postData[i].time,
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w200,
                                color: Colors.black),
                          ),
                          const Icon(Icons.public,size: 20,)
                        ],
                      )
                    ],
                  ),
                )),
                IconButton(
                  onPressed: postData[i].moreOnPressed,
                  icon: const Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Text(postData[i].postTitle),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Image(image: AssetImage(postData[i].PostImage)),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    postData[i].LikeOnPressed;
                  },
                  icon: const Icon(Icons.thumb_up_off_alt_outlined),
                ),
                const Text("52k"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    postData[i].commentOnPressed;
                  },
                  icon: const Icon(Icons.comment_outlined),
                ),
                const Text("52"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    postData[i].ShareOnPressed;
                  },
                  icon: const Icon(Icons.share_outlined),
                ),
                const Text("Share"),
              ],
            ),
          ]),
          const Divider(thickness: 6, color: Colors.grey)
        ],
      ],
    );
  }
}
