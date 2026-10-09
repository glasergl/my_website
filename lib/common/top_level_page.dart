import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/common/logo.dart';
import 'package:my_website/common/responsive_page.dart';
import 'package:my_website/page_routing/routing_bar.dart';

abstract class TopLevelPage extends ResponsivePage {
  const TopLevelPage({super.key});

  Widget buildLandscapeBody(BuildContext context, WidgetRef ref);
  Widget buildPortraitBody(BuildContext context, WidgetRef ref);

  @override
  Widget buildLandscape(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Logo()),
      body: Column(children: [RoutingBar(), buildLandscapeBody(context, ref)]),
    );
  }

  @override
  Widget buildPortrait(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Logo()),
      body: buildPortraitBody(context, ref),
      bottomNavigationBar: BottomAppBar(child: RoutingBar()),
    );
  }
}
