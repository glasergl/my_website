import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/page_routing/route_select_widget.dart';
import 'package:my_website/pages/shell_page.dart';

class RoutingBar extends ConsumerWidget {
  const RoutingBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: .center,
      spacing: 10.0,
      children: List.generate(
        ShellPage.routingDestinations.length,
        (i) => RouteSelectWidget(ShellPage.routingDestinations[i]),
      ),
    );
  }
}
