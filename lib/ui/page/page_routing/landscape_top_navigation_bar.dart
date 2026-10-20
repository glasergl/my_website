import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/page_routing/route_select_widget.dart';
import 'package:my_website/ui/page/page_routing/routing_destination.dart';

class LandscapeTopNavigationBar extends ConsumerWidget {
  const LandscapeTopNavigationBar(this.routingDestinations, {super.key});

  final List<RoutingDestination> routingDestinations;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: routingDestinations.map((destination) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: RouteSelectWidget(destination),
        );
      }).toList(),
    );
  }
}
