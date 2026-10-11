import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/pages/logo.dart';
import 'package:my_website/common/responsive_page.dart';
import 'package:my_website/pages/dark_mode_switch.dart';
import 'package:my_website/page_routing/routing_bar.dart';

class ShellPage extends ConsumerWidget {
  const ShellPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.sizeOf(context);
    return ResponsivePage(
      landscape: (context, ref) => Scaffold(
        appBar: AppBar(title: Logo(), surfaceTintColor: Colors.transparent, actions: [DarkModeSwitch()],),
        body: Column(
          spacing: 10.0,
          children: [
            RoutingBar(),
            SizedBox(width: 0.6 * size.width, child: const Divider()),
            Expanded(child: child),
          ],
        ),
      ),
      portrait: (context, ref) => Scaffold(
        appBar: AppBar(title: Logo(), actions: [DarkModeSwitch()],),
        body: child,
        bottomNavigationBar: BottomAppBar(child: RoutingBar()),
      ),
    );
  }
}
