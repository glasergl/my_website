import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/ui/page/page_routing/routing_destination.dart';

class PortraitBottomNavigationBar extends ConsumerWidget {
  final List<RoutingDestination> destinations;

  const PortraitBottomNavigationBar(this.destinations, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentRoute = GoRouterState.of(context).uri.path;
    final selectedIndex = destinations.indexWhere(
      (routingDestination) => currentRoute == routingDestination.goRoute,
    );

    return BottomNavigationBar(
      currentIndex: selectedIndex < 0 ? 0 : selectedIndex,
      type: BottomNavigationBarType.fixed,
      items: destinations.map((destination) {
        return BottomNavigationBarItem(
          icon: destination.icon,
          label: destination.destinationName,
        );
      }).toList(),
      onTap: (index) {
        context.go(destinations[index].goRoute);
      },
    );
  }
}
