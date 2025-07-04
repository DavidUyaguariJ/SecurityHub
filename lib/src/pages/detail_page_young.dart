import 'package:ciber_school_a/src/pages/providers/detail_provider_Young.dart';
import 'package:ciber_school_a/src/widgets/video_scroll.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPageYoung extends StatelessWidget {
  const DetailPageYoung({super.key});

  @override
  Widget build(BuildContext context) {
    final detailProvider = context.watch<DetailProviderYoung>();

    return Scaffold(
        body: detailProvider.initialLoading2
            ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
            : VideoScroll(videos: detailProvider.videosYoung));
  }
}
