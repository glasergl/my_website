import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/page_routing/routing_destination.dart';

class RouteSelectWidget extends ConsumerWidget {
  const RouteSelectWidget(this.routingDestination, this._useIcons, {super.key});
  final bool _useIcons;
  final RoutingDestination routingDestination;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _useIcons
        ? TextButton.icon(
            onPressed: () => context.go(routingDestination.destinationName),
            label: Text(routingDestination.destinationName),
            icon: Icon(Icons.home),
          )
        : TextButton(
            onPressed: () => context.go(routingDestination.goRoute),
            child: Text(routingDestination.destinationName),
          );
  }
}
