import 'package:ciber_school_a/src/pages/providers/detail_provider.dart';
import 'package:ciber_school_a/src/widgets/video_scroll.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final detailProvider = context.watch<DetailProvider>();

    return Scaffold(
        body: detailProvider.initialLoading1
            ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
            : VideoScroll(videos: detailProvider.videos));
  }
}
