import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_website/page_routing/routing_destination.dart';
import 'package:my_website/common/responsive_page.dart';
import 'package:my_website/pages/shell_page_landscape.dart';
import 'package:my_website/pages/shell_page_portrait.dart';

class ShellPage extends ConsumerWidget {
  const ShellPage({super.key, required this.child});

  final Widget child;

  static const List<RoutingDestination> routingDestinations = [
    RoutingDestination("Startseite", Icon(Icons.home), "/"),
    RoutingDestination("Programmieren", Icon(Icons.code), "/programming"),
    RoutingDestination("Zocken", Icon(Icons.sports_esports), "/gaming"),
    RoutingDestination(
      "Soziales",
      FaIcon(FontAwesomeIcons.youtube),
      "/socials",
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsivePage(
      landscape: (context, ref) => ShellPageLandscape(child: child),
      portrait: (context, ref) => ShellPagePortrait(child: child),
    );
  }
}
