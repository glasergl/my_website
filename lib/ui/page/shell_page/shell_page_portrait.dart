import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/page_routing/routes.dart';
import 'package:my_website/ui/page/shell_page/bottom_button_bar.dart';
import 'package:my_website/ui/page/shell_page/locale_selection.dart';
import 'package:my_website/ui/page/shell_page/logo.dart';
import 'package:my_website/ui/page/shell_page/dark_mode_switch.dart';
import 'package:my_website/ui/page/page_routing/portrait_bottom_navigation_bar.dart';

class ShellPagePortrait extends ConsumerWidget {
  const ShellPagePortrait({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routingDestinations = getRoutingDestinations(context);
    return Scaffold(
      appBar: AppBar(
        title: Logo(),
        actions: [LocaleSelection(), DarkModeSwitch()],
      ),
      body: Column(
        children: [
          Expanded(child: child),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
            child: BottomButtonBar(),
          ),
        ],
      ),
      bottomNavigationBar: PortraitBottomNavigationBar(routingDestinations),
    );
  }
}
