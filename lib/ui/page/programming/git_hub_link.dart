import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubLink extends ConsumerWidget {
  const GitHubLink(this.url, {super.key});

  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton.icon(
      onPressed: () async => await launchUrl(Uri.parse(url)),
      icon: const FaIcon(FontAwesomeIcons.github),
      label: const Text('Code'),
    );
  }
}
