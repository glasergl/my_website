import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/l10n/app_localizations.dart';
import 'package:my_website/ui/page/socials/video.dart';

class SocialsPage extends ConsumerWidget {
  const SocialsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Video(
            AppLocalizations.of(context)!.socialsMyFavouriteVideo,
            "favourite_yt_thumbnail.jpg",
          ),
        ],
      ),
    );
  }
}
