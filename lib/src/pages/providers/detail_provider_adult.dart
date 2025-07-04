import 'package:ciber_school_a/domain/entities/video_post.dart';
import 'package:ciber_school_a/infrastructure/models/local_video_model.dart';
import 'package:ciber_school_a/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DetailProviderAdult extends ChangeNotifier {
  bool initialLoading3 = true;

  List<VideoPost> videos = [];

  List<VideoPost> videosYoung = [];

  List<VideoPost> videosAdult = [];

  Future<void> loadNextPageAdult() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideosAdult = videoPostsAdult
        .map((video) => VideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videosAdult.addAll(newVideosAdult);
    initialLoading3 = false;
    notifyListeners();
  }
}
