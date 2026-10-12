import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/page_routing/route_select_widget.dart';
import 'package:my_website/ui/page/shell_page/locale_selection.dart';
import 'package:my_website/ui/page/shell_page/logo.dart';
import 'package:my_website/ui/page/shell_page/dark_mode_switch.dart';
import 'package:my_website/ui/page/shell_page/shell_page.dart';

class ShellPagePortrait extends ConsumerWidget {
  const ShellPagePortrait({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Logo(),
        actions: [LocaleSelection(), DarkModeSwitch()],
      ),
      body: child,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: .center,
          spacing: 10.0,
          children: List.generate(
            ShellPage.routingDestinations.length,
            (i) => RouteSelectWidget(ShellPage.routingDestinations[i]),
          ),
        ),
      ),
    );
  }
}
