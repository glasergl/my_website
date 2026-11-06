import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/common/responsive_page.dart';
import 'package:my_website/ui/page/shell_page/shell_page_landscape.dart';
import 'package:my_website/ui/page/shell_page/shell_page_portrait.dart';

class ShellPage extends ConsumerWidget {
  const ShellPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsivePage(
      landscape: (context, ref) => ShellPageLandscape(child: child),
      portrait: (context, ref) => ShellPagePortrait(child: child),
    );
  }
}
