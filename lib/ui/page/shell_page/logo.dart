import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class Logo extends ConsumerWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.go("/"),
        child: Text("GG", style: Theme.of(context).textTheme.headlineLarge),
      ),
    );
  }
}
