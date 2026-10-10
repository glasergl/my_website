import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/pages/socials/video.dart';

class SocialsPage extends ConsumerWidget {
  const SocialsPage({super.key});

  @override
  Widget build(Object context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [Video("Mein Lieblingsvideo", "favourite_yt_thumbnail.jpg")],
      ),
    );
  }
}
