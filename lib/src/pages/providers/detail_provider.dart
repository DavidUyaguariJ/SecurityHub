import 'package:ciber_school_a/domain/entities/video_post.dart';
import 'package:ciber_school_a/infrastructure/models/local_video_model.dart';
import 'package:ciber_school_a/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DetailProvider extends ChangeNotifier {
  bool initialLoading1 = true;

  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => VideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialLoading1 = false;
    notifyListeners();
  }
}
