import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/page_routing/route_select_widget.dart';
import 'package:my_website/page_routing/routing_destination.dart';

class RoutingBar extends ConsumerWidget {
  const RoutingBar({super.key, this._useIcons = false});

  final bool _useIcons;

  static List<RoutingDestination> routingDestinations = [
    RoutingDestination("Home", "/"),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: List.generate(
        routingDestinations.length,
        (i) => RouteSelectWidget(routingDestinations[i], _useIcons),
      ),
    );
  }
}
