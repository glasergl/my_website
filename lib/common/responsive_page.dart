import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResponsivePage extends ConsumerWidget {
  const ResponsivePage({
    super.key,
    required this.landscape,
    required this.portrait,
  });

  static const double widthBreakPoint = 900.0;

  final Widget Function(BuildContext context, WidgetRef ref) landscape;
  final Widget Function(BuildContext context, WidgetRef ref) portrait;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) => constraints.maxWidth < widthBreakPoint
          ? portrait(context, ref)
          : landscape(context, ref),
    );
  }
}
