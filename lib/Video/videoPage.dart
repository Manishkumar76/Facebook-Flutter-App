// // ignore_for_file: file_names
//
// import 'package:flutter/material.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
//
// class VideosScreen extends StatefulWidget{
//   const VideosScreen({Key?key}):super(key: key);
//
//   @override
//   // ignore: library_private_types_in_public_api
//   _VideosScreenState createState()=>_VideosScreenState();
// }
//
// class _VideosScreenState extends State<VideosScreen>{
//
//   final _Controller= YoutubePlayerController.fromVideoId(
//       videoId: "DmLF7bcf4tg",
//     autoPlay: false,
//     params: const YoutubePlayerParams(
//       mute: false,
//       showControls: true,
//       showFullscreenButton: false,
//     ),
//   );
//   bool isSwitched = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Video"),
//       ),
//       body:
//       SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Container(
//               height: 250,
//               color: Colors.black,
//               child: Center(
//                 child: Icon(
//                   Icons.play_circle_fill,
//                   size: 70,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Video Title',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'This is a description of the video. You can add more details here.',
//                 style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//               ),
//             ),
//             ButtonBar(
//               alignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Handle like button press
//                   },
//                   icon: Icon(Icons.thumb_up),
//                   label: Text('Like'),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.blue,
//                   ),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Handle comment button press
//                   },
//                   icon: Icon(Icons.comment),
//                   label: Text('Comment'),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.grey[200],
//                   ),
//                 ),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     // Handle share button press
//                   },
//                   icon: Icon(Icons.share),
//                   label: Text('Share'),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.grey[200],
//                   ),
//                 ),
//               ],
//             ),
//             Divider(
//               height: 1,
//               color: Colors.grey[300],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Text(
//                     'Comments:',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   // Add your comments widgets here
//                   CommentWidget(
//                     username: 'John Doe',
//                     comment: 'Great video!',
//                   ),
//                   CommentWidget(
//                     username: 'Jane Smith',
//                     comment: 'I love this!',
//                   ),
//                   // Add more comments as needed
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CommentWidget extends StatelessWidget {
//   final String username;
//   final String comment;
//
//   CommentWidget({required this.username, required this.comment});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Text(
//             '$username:',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           Text(comment),
//         ],
//       ),
//     );
//   }
// }
//       // Column(
//       //   children: [
//       //     Expanded(
//       //         child: Row(
//       //           children: [
//       //             // IconButton(
//       //             //   onPressed: () {},
//       //             //   icon: const Icon(Icons.add_a_photo_outlined),
//       //             // ),
//       //             Expanded(
//       //                 child: Column(
//       //                   crossAxisAlignment: CrossAxisAlignment.start,
//       //                   children: [
//       //                     Row(
//       //                       children: [
//       //                         const Text(
//       //                           "Rahul",
//       //                           style: TextStyle(
//       //                               fontSize: 20.0,
//       //                               color: Colors.black,
//       //                               fontWeight: FontWeight.bold),
//       //                         ),
//       //                         TextButton(
//       //                           child: const Text(
//       //                             'Follow',
//       //                             style: TextStyle(
//       //                                 fontSize: 20.0,
//       //                                 color: Colors.blueAccent,
//       //                                 fontWeight: FontWeight.bold),
//       //                           ),
//       //                           onPressed: () {},
//       //                         ),
//       //                       ],
//       //                     ),
//       //                     Container(
//       //                       margin: const EdgeInsets.symmetric(
//       //                           horizontal: 10.0, vertical: 10),
//       //                       child: Column(
//       //                         crossAxisAlignment: CrossAxisAlignment.start,
//       //                         children: [
//       //                           YoutubePlayerControllerProvider(
//       //                             controller: YoutubePlayerController
//       //                                 .fromVideoId(
//       //                                 videoId: "DmLF7bcf4tg",
//       //                                 autoPlay: false,
//       //                                 params: const YoutubePlayerParams(
//       //                                   mute: false,
//       //                                   showControls: true,
//       //                                   showFullscreenButton: true,
//       //                                 )),
//       //                             child: YoutubePlayer(
//       //                               controller: _Controller,
//       //                               aspectRatio: 16 / 9,
//       //                             ),
//       //                           ),
//       //                         const   Padding(
//       //                             padding: EdgeInsets.all(10.0),
//       //                             child: Text(
//       //                               "Play Video",
//       //                               style: TextStyle(
//       //                                   fontSize: 18.0, color: Colors.black),
//       //                             ),
//       //                           )
//       //                         ],
//       //                       ),
//       //                     )
//       //                   ],
//       //                 ))
//       //           ],
//       //         ))
//       //   ],),

// import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';


// class VideosScreen extends StatelessWidget {
//   final List<String> videoUrls = [
//     // Add URLs of your videos here
//     'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
//     'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
//     'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Videos'),
//       ),
//       body: VideosList(videoUrls: videoUrls),
//     );
//   }
// }
//
// class VideosList extends StatefulWidget {
//   final List<String> videoUrls;
//
//   VideosList({required this.videoUrls});
//
//   @override
//   _VideosListState createState() => _VideosListState();
// }
//
// class _VideosListState extends State<VideosList> {
//   late ChewieController _chewieController;
//
//   @override
//   void initState() {
//     super.initState();
//     _initializePlayer();
//   }
//
//   void _initializePlayer() {
//     _chewieController = ChewieController(
//       videoPlayerController: VideoPlayerController.network(widget.videoUrls.first),
//       autoPlay: false,
//       looping: false,
//       // aspectRatio: 16 / 9,
//       autoInitialize: true,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: widget.videoUrls.length,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Chewie(
//             controller: _chewieController,
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   void dispose() {
//     _chewieController.dispose();
//     super.dispose();
//   }
// }

class Video {
  final String title;
  final String description;

  Video({required this.title, required this.description});
}

class VideosScreen extends StatefulWidget {
  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  final List<Video> videos = [
    Video(
      title: 'Amazing Scenery',
      description: 'Enjoy the beauty of nature!',
    ),
    Video(
      title: 'Funny Cat Compilation',
      description: 'Watch these cute cats doing funny things!',
    ),
    // Add more videos as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Facebook Video', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

        actions: [
          IconButton(
            icon:const Icon(Icons.more_horiz),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return FacebookVideoItem(video: videos[index]);
        },
      ),
    );
  }
}

class FacebookVideoItem extends StatelessWidget {
  final Video video;

  const FacebookVideoItem({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            color: Colors.black,
            child:const  Center(
              child: Icon(
                Icons.play_circle_fill,
                size: 70,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              video.title,
              style:const  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              video.description,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Handle like button press
                },
                icon:const  Icon(Icons.thumb_up),
                label: const Text('Like'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle comment button press
                },
                icon: const Icon(Icons.comment),
                label:const  Text('Comment'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle share button press
                },
                icon:const  Icon(Icons.share),
                label:const  Text('Share'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                ),
              ),
            ],
          ),
          Divider(
            height: 1,
            color: Colors.grey[300],
          ),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Comments:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 8),
                // Add your comments widgets here
                CommentWidget(
                  username: 'John Doe',
                  comment: 'Great video!',
                ),
                CommentWidget(
                  username: 'Jane Smith',
                  comment: 'I love this!',
                ),
                // Add more comments as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  final String username;
  final String comment;

  const CommentWidget({super.key, required this.username, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '$username:',
            style:const  TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(comment),
        ],
      ),
    );
  }
}


