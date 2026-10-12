import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/page_routing/route_select_widget.dart';
import 'package:my_website/ui/page/shell_page/logo.dart';
import 'package:my_website/ui/page/shell_page/dark_mode_switch.dart';
import 'package:my_website/ui/page/shell_page/shell_page.dart';

class ShellPageLandscape extends ConsumerWidget {
  const ShellPageLandscape({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Logo(),
        actions: [
          ...List.generate(
            ShellPage.routingDestinations.length,
            (i) => Container(
              margin: EdgeInsets.fromLTRB(5, 0.0, 5, 0.0),
              child: RouteSelectWidget(ShellPage.routingDestinations[i]),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 0.0, 5, 0.0),
            child: DarkModeSwitch(),
          ),
        ],
      ),
      body: child,
    );
  }
}
