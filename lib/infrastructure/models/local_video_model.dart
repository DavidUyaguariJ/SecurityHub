import 'package:ciber_school_a/domain/entities/video_post.dart';

class VideoModel {
  VideoModel({
    required this.name,
    required this.videoUrl,
  });

  final String name;
  final String videoUrl;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      VideoModel(name: json["name"], videoUrl: json["videoUrl"]);

  VideoPost toVideoPostEntity() => VideoPost(caption: name, videoUrl: videoUrl);
}
