import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/ui/page/page_routing/routing_destination.dart';

class RouteSelectWidget extends ConsumerWidget {
  const RouteSelectWidget(this.routingDestination, {super.key});

  final RoutingDestination routingDestination;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool selected =
        GoRouterState.of(context).uri.path == routingDestination.goRoute;
    return Container(
      color: selected ? Theme.of(context).focusColor : null,
      child: TextButton.icon(
        onPressed: () => context.go(routingDestination.goRoute),
        icon: routingDestination.icon,
        label: Text(routingDestination.destinationName),
        style: ButtonStyle(
          overlayColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.hovered) && selected) {
              return Colors.transparent;
            } else if (states.contains(WidgetState.hovered)) {
              return Theme.of(context).hoverColor;
            } else {
              return Colors.transparent;
            }
          }),
        ),
      ),
    );
  }
}
