import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class LolAccount extends ConsumerWidget {
  const LolAccount(this.summonerName, this.url, {super.key});

  final String summonerName;
  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
      child: Text(summonerName),
    );
  }
}
