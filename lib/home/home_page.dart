import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/common/top_level_page.dart';

class HomePage extends TopLevelPage {
  const HomePage({super.key});

  @override
  Widget buildLandscapeBody(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(children: [Text("Home"), Text("Gabriel Glaser")]),
    );
  }

  @override
  Widget buildPortraitBody(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(children: [Text("Home"), Text("Gabriel Glaser")]),
    );
  }
}
