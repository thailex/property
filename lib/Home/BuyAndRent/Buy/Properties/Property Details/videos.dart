import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prides_sales_and_lettings/Asset/asset.dart';
import 'package:prides_sales_and_lettings/Colors/colors.dart';
import 'package:video_player/video_player.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<Video> video = [
    Video(
        image: Assets.propertyImage,
        videoLogo: Assets.videoIcon,
        url: 'assets/propertyVideo1.mp4'),
    Video(
        image: Assets.propertyImage,
        videoLogo: Assets.videoIcon,
        url: 'assets/propertyVideo1.mp4'),
    Video(
        image: Assets.propertyImage,
        videoLogo: Assets.videoIcon,
        url: 'assets/propertyVideo1.mp4'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Coloring.bg1,
            Coloring.bg2,
            Coloring.bg3,
          ])),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Coloring.wte,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(),
          child: Text(
            'Video Tour',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Coloring.wte,
            )),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 70,
      ),
      body: ListView.builder(
        itemCount: video.length,
        itemBuilder: (context, index) {
          return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(color: Coloring.wte, boxShadow: [
                BoxShadow(
                  color: Coloring.otpSelectedBorderColor2,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                  blurStyle: BlurStyle.outer,
                ),
              ]),
              child: FlickVideosPlayer(
                url: video[index].url,
              ));
        },
      ),
    );
  }
}

class Video {
  String image;
  String videoLogo;
  String url;
  Video({required this.image, required this.videoLogo, required this.url});
}

// class ApinoVideoPlayer extends StatefulWidget {
//   final String url;
//   const ApinoVideoPlayer({super.key, required this.url});
//
//   @override
//   State<ApinoVideoPlayer> createState() => _ApinoVideoPlayerState();
// }
//
// class _ApinoVideoPlayerState extends State<ApinoVideoPlayer>
//     with SingleTickerProviderStateMixin {
//   late CachedVideoPlayerController _videoPlayerController;
//   late CustomVideoPlayerController _customVideoPlayerController;
//   late CustomVideoPlayerSettings _customVideoPlayerSettings;
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     _videoPlayerController = CachedVideoPlayerController.asset(widget.url)
//       ..initialize().then((value) => setState(() {
//             isLoading = false;
//           }));
//     _customVideoPlayerSettings = const CustomVideoPlayerSettings(
//       playButton: Icon(
//         Icons.play_arrow,
//         color: Colors.red, // Set your desired color here
//       ),
//       pauseButton: Icon(
//         Icons.pause,
//         color: Colors.red, // Set your desired color here
//       ),
//       // Customize other icons similarly
//     );
//     _customVideoPlayerController = CustomVideoPlayerController(
//       context: context,
//       videoPlayerController: _videoPlayerController,
//       customVideoPlayerSettings: _customVideoPlayerSettings,
//     );
//   }
//
//   @override
//   void dispose() {
//     _customVideoPlayerController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const Center(
//             child: SizedBox(
//               child: CircularProgressIndicator(
//                 strokeWidth: 5.0,
//               ),
//             ),
//           )
//         : CustomVideoPlayer(
//             customVideoPlayerController: _customVideoPlayerController,
//           );
//   }
// }

class FlickVideosPlayer extends StatefulWidget {
  final String url;
  const FlickVideosPlayer({super.key, required this.url});

  @override
  State<FlickVideosPlayer> createState() => _FlickVideosPlayerState();
}

class _FlickVideosPlayerState extends State<FlickVideosPlayer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset(widget.url),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlickVideoPlayer(flickManager: flickManager);
  }
}
