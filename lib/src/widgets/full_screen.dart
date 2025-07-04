import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FullScreenPLayer extends StatefulWidget {
  final String videoUrl;
  final String caption;

  const FullScreenPLayer(
      {super.key, required this.videoUrl, required this.caption});

  @override
  State<FullScreenPLayer> createState() => _FullScreenPLayerState();
}

class _FullScreenPLayerState extends State<FullScreenPLayer> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(4)
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return controller.value.isInitialized
        ? GestureDetector(
            onTap: () {
              if (controller.value.isPlaying) {
                controller.pause();
                return;
              }
              controller.play();
            },
            child: AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: Stack(
                  children: [
                    VideoPlayer(controller),
                    Positioned(
                      bottom: 50,
                      left: 20,
                      child: _VideoCaption(caption: widget.caption),
                    )
                  ],
                )),
          )
        : const Center(
            child: CircularProgressIndicator(
            strokeWidth: 2,
          ));
  }
}

class _VideoCaption extends StatelessWidget {
  final String caption;
  const _VideoCaption({super.key, required this.caption});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    return SizedBox(
        width: size.width * .6,
        child: Text(
          caption,
          maxLines: 2,
          style: titleStyle,
        ));
  }
}
