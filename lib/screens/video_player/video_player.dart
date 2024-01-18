import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lecle_yoyo_player/lecle_yoyo_player.dart';

class VideoPlayerCustomize extends StatefulWidget {
  const VideoPlayerCustomize({Key? key}) : super(key: key);

  @override
  State<VideoPlayerCustomize> createState() => _VideoPlayerCustomizeState();
}

class _VideoPlayerCustomizeState extends State<VideoPlayerCustomize> {
  bool fullscreen = false;

  void landscape() async {
    fullscreen = !fullscreen;
    await SystemChrome.setPreferredOrientations(fullscreen
        ? [
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ]
        : [
            DeviceOrientation.portraitUp,
          ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: fullscreen == false
            ? AppBar(
                backgroundColor: Colors.blue,
                title: const Text("Movie"),
                centerTitle: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            : null,
        body: Padding(
          padding:
              fullscreen ? EdgeInsets.zero : const EdgeInsets.only(top: 32.0),
          child: YoYoPlayer(
            // aspectRatio: 16 / 9,
            url:
                'https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm',
            // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
            // "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
            // "https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8",
            allowCacheFile: true,
            onCacheFileCompleted: (files) {
              // print('Cached file length ::: ${files?.length}');

              if (files != null && files.isNotEmpty) {
                // for (var file in files) {
                //   // print('File path ::: ${file.path}');
                // }
              }
            },
            onCacheFileFailed: (error) {
              // print('Cache file error ::: $error');
            },
            videoStyle: VideoStyle(
              qualityStyle: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              fullscreenIcon: IconButton(
                onPressed: () => setState(() {
                  landscape();
                }),
                icon: const Icon(
                  Icons.fullscreen,
                ),
              ),
              forwardAndBackwardBtSize: 30.0,
              playButtonIconSize: 40.0,
              playIcon: const Icon(
                Icons.play_arrow_rounded,
                size: 40.0,
                color: Colors.white,
              ),
              pauseIcon: const Icon(
                Icons.pause,
                size: 40.0,
                color: Colors.white,
              ),
              videoQualityPadding: const EdgeInsets.all(5.0),
              // showLiveDirectButton: true,
              // enableSystemOrientationsOverride: false,
            ),
            videoLoadingStyle: const VideoLoadingStyle(
              loading: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/movie1.png'),
                      fit: BoxFit.fitHeight,
                      height: 50,
                    ),
                    SizedBox(height: 16.0),
                    Text("Loading video..."),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
