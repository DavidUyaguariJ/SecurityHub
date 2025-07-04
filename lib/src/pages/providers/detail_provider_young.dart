import 'package:ciber_school_a/domain/entities/video_post.dart';
import 'package:ciber_school_a/infrastructure/models/local_video_model.dart';
import 'package:ciber_school_a/shared/data/local_video_posts.dart';
import 'package:flutter/material.dart';

class DetailProviderYoung extends ChangeNotifier {
  bool initialLoading2 = true;

  List<VideoPost> videosYoung = [];

  Future<void> loadNextPageYoung() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideosYoung = videoPostsYoung
        .map((video) => VideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videosYoung.addAll(newVideosYoung);
    initialLoading2 = false;
    notifyListeners();
  }
}
