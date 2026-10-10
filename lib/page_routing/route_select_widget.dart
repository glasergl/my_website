import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/page_routing/routing_destination.dart';

class RouteSelectWidget extends ConsumerWidget {
  const RouteSelectWidget(this.routingDestination, {super.key});
  final RoutingDestination routingDestination;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton.icon(
      onPressed: () => context.go(routingDestination.goRoute),
      icon: routingDestination.icon,
      label: Text(routingDestination.destinationName),
    );
  }
}
