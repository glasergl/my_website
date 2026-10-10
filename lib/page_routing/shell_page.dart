import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/common/logo.dart';
import 'package:my_website/common/responsive_page.dart';
import 'package:my_website/page_routing/routing_bar.dart';

class ShellPage extends ConsumerWidget {
  const ShellPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsivePage(
      landscape: (context, ref) => Scaffold(
        appBar: AppBar(title: Logo(), surfaceTintColor: Colors.transparent),
        body: Column(
          spacing: 10.0,
          children: [
            RoutingBar(),
            const Divider(),
            Expanded(child: child),
          ],
        ),
      ),
      portrait: (context, ref) => Scaffold(
        appBar: AppBar(title: Logo()),
        body: child,
        bottomNavigationBar: BottomAppBar(child: RoutingBar()),
      ),
    );
  }
}
