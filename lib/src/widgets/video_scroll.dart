import 'package:ciber_school_a/domain/entities/video_post.dart';
import 'package:ciber_school_a/src/widgets/full_screen.dart';
import 'package:flutter/material.dart';

class VideoScroll extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScroll({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPLayer(
                  caption: videoPost.caption, videoUrl: videoPost.videoUrl),
            )
          ],
        );
      },
    );
  }
}
