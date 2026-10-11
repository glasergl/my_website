import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/pages/programming/on_going_projects.dart';

class ProgrammingPage extends ConsumerWidget {
  const ProgrammingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(child: OnGoingProjects());
  }
}
