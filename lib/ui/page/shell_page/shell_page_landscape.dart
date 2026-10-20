import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/page_routing/landscape_top_navigation_bar.dart';
import 'package:my_website/ui/page/page_routing/route_select_widget.dart';
import 'package:my_website/ui/page/page_routing/routes.dart';
import 'package:my_website/ui/page/shell_page/locale_selection.dart';
import 'package:my_website/ui/page/shell_page/logo.dart';
import 'package:my_website/ui/page/shell_page/dark_mode_switch.dart';

class ShellPageLandscape extends ConsumerWidget {
  const ShellPageLandscape({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routingDestinations = getRoutingDestinations(context);
    return Scaffold(
      appBar: AppBar(
        title: Logo(),
        actions: [LocaleSelection(), DarkModeSwitch()],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            LandscapeTopNavigationBar(routingDestinations),
            const SizedBox(height: 24),
            Expanded(child: child ?? Container()),
          ],
        ),
      ),
    );
  }
}
