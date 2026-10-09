import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/pages/home/my_title.dart';
import 'package:my_website/pages/home/on_going_projects.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(spacing: 20.0, children: [MyTitle(), OnGoingProjects()]),
    );
  }
}
