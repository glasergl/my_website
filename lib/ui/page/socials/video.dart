import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class Video extends ConsumerWidget {
  const Video(this.title, this.imgName, {super.key});

  final String title;
  final String imgName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyLarge),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () async => await launchUrl(
                Uri.parse("https://www.youtube.com/watch?v=7bkbSnHQEZM"),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/images/$imgName', width: 600.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
