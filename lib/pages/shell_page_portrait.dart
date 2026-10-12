import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/pages/logo.dart';
import 'package:my_website/pages/dark_mode_switch.dart';
import 'package:my_website/page_routing/routing_bar.dart';

class ShellPage extends ConsumerWidget {
  const ShellPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Logo(), actions: [DarkModeSwitch()]),
      body: child,
      bottomNavigationBar: BottomAppBar(child: RoutingBar()),
    );
  }
}
