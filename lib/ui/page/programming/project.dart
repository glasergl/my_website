import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Project extends ConsumerWidget {
  const Project(this.title, this.description, {super.key, this.child});

  final String title;
  final String description;
  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(width: 200.0, child: Text(description, textAlign: .center)),
        child ?? Container(),
      ],
    );
  }
}
