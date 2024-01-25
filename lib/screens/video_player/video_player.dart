import 'dart:async';
import 'package:flutter/services.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/controllers/bottomsheet_controller.dart';
import 'package:movfilix/screens/video_player/bottom_sheet.dart';
import 'package:movfilix/screens/video_player/settings_list.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({
    super.key,
  });

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _controller;
  final setttingsController = Get.put(BottomSheetController());
  late Future<void> _initializeVideoPlayerFuture;
  late IconData _playPauseIcon;
  StreamSubscription? pos, dur;
  late double playbackSpeed;
  late List<double> availableSpeeds;
  late DateTime lastTap;
  late double lastTapPosition;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        "https://dsqqu7oxq6o1v.cloudfront.net/preview-9650dW8x3YLoZ8.webm",
      ),
    );
    playbackSpeed = 1.0; // Default playback speed
    availableSpeeds = [0.5, 1.0, 1.5, 2.0];

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.play();
    _initializeVideoPlayerFuture.then((value) {
      _controller.addListener(listeners);
    });

    _playPauseIcon = Icons.play_circle;
    lastTap = DateTime.now();
    lastTapPosition = 0.0;
  }

  void listeners() async {
    pos = _controller.position.asStream().listen((event) {
      setState(() {
        _playPauseIcon = _controller.value.isPlaying
            ? Icons.pause_circle
            : Icons.play_circle;
      });
    });
  }

  bool showVolumn = false;
  double volumnValue = 1;
  bool showSpeed = false;
  bool seekbarVisiblity = false;

  @override
  Widget build(BuildContext context) {
    Duration timeDifference = DateTime.now().difference(lastTap);
    if (timeDifference.inSeconds > 5) {
      seekbarVisiblity = false;
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          if (showVolumn) {
            showSpeed = false;
            showVolumn = !showVolumn;
          } else {
            seekbarVisiblity = !seekbarVisiblity;
          }

          lastTap = DateTime.now();
        });
      },
      onDoubleTap: () {
        DateTime now = DateTime.now();
        double tapPosition = MediaQuery.of(context).size.height / 2;

        setState(() {
          if (lastTapPosition > tapPosition) {
            Duration newPosition =
                _controller.value.position + const Duration(seconds: 10);
            _controller.seekTo(newPosition);
          } else if (lastTapPosition < tapPosition) {
            Duration newPosition =
                _controller.value.position - const Duration(seconds: 10);
            _controller.seekTo(newPosition);
          }
        });

        lastTap = now;
        lastTapPosition = MediaQuery.of(context).size.height;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Visibility(
                visible: seekbarVisiblity,
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (_controller.value.isPlaying) {
                                _controller.pause();
                                _playPauseIcon = Icons.play_circle;
                              } else {
                                _controller.play();
                                _playPauseIcon = Icons.pause_circle;
                              }
                            });
                          },
                          icon: Icon(
                            _playPauseIcon,
                            size: 35,
                            color: Colors.white,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.skip_next,
                          size: 29,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            showVolumn = !showVolumn;
                          });
                        },
                        icon: volumnValue <= 0
                            ? const Icon(
                                Icons.volume_off_rounded,
                                size: 27,
                                color: Colors.white,
                              )
                            : const Icon(
                                Icons.volume_up,
                                size: 27,
                                color: Colors.white,
                              ),
                      ),
                      Text(
                        formatDuration(_controller.value.position),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Slider(
                          value:
                              _controller.value.position.inSeconds.toDouble(),
                          min: 0.0,
                          max: _controller.value.duration.inSeconds.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              _controller.seekTo(Duration(
                                seconds: value.toInt(),
                              ));
                            });
                          },
                        ),
                      ),
                      Text(
                        formatDuration(_controller.value.duration),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Get.bottomSheet(
                          BottomSheetComponent(
                              title: "Movie Setting",
                              list: setttingsController.settings,
                              onActive: (setting) {
                                Get.back();
                                Get.bottomSheet(
                                  SettingList(setting: setting),
                                  isScrollControlled: true,
                                );
                              }),
                          isScrollControlled: true,
                        ),
                        icon: const Icon(Icons.settings),
                      )
                    ],
                  ),
                ),
              ),
            ),
            if (showVolumn)
              Positioned(
                left: 120,
                bottom: 52,
                child: RotatedBox(
                  quarterTurns: -1,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 5),
                    width: 150,
                    height: 40,
                    color: Colors.black.withOpacity(0.5),
                    child: Slider(
                      value: volumnValue,
                      min: 0,
                      max: 1,
                      onChanged: (value) {
                        setState(
                          () {
                            volumnValue = value;
                            _controller.setVolume(volumnValue);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            SizedBox(
              height: 65,
              width: 60,
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.removeListener(listeners);
    _controller.dispose();
    pos?.cancel();
    dur?.cancel();
    super.dispose();
  }
}

String formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');

  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

  return "$twoDigitMinutes:$twoDigitSeconds";
}
