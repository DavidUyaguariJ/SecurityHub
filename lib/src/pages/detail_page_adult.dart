import 'package:ciber_school_a/src/pages/providers/detail_provider_adult.dart';
import 'package:ciber_school_a/src/widgets/video_scroll.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPageAdult extends StatelessWidget {
  const DetailPageAdult({super.key});

  @override
  Widget build(BuildContext context) {
    final detailProvider = context.watch<DetailProviderAdult>();

    return Scaffold(
        body: detailProvider.initialLoading3
            ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
            : VideoScroll(videos: detailProvider.videosAdult));
  }
}
