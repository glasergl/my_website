import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_website/page_routing/route_select_widget.dart';
import 'package:my_website/page_routing/routing_destination.dart';

class RoutingBar extends ConsumerWidget {
  const RoutingBar({super.key});

  static const List<RoutingDestination> routingDestinations = [
    RoutingDestination("Home", Icon(Icons.home), "/"),
    RoutingDestination("Zocken", Icon(Icons.sports_esports), "/gaming"),
    RoutingDestination(
      "Soziales",
      FaIcon(FontAwesomeIcons.youtube),
      "/socials",
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: .center,
      spacing: 10.0,
      children: List.generate(
        routingDestinations.length,
        (i) => RouteSelectWidget(routingDestinations[i]),
      ),
    );
  }
}
