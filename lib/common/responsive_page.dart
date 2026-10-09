import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ResponsivePage extends ConsumerWidget {
  const ResponsivePage({super.key});

  static const double widthBreakPoint = 600.0;

  Widget buildLandscape(BuildContext context, WidgetRef ref);
  Widget buildPortrait(BuildContext context, WidgetRef ref);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) => constraints.maxWidth < widthBreakPoint
          ? buildPortrait(context, ref)
          : buildLandscape(context, ref),
    );
  }
}
