import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyTitle extends ConsumerWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Gabriel Glaser",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text("MSc. Informatik Student an der Universität Stuttgart"),
          ],
        ),
      ),
    );
  }
}
