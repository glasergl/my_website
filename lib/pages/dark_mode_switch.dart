import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/pages/use_dark_mode_provider.dart';

class DarkModeSwitch extends ConsumerWidget {
  const DarkModeSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useDarkMode = ref.watch(useDarkModeProvider);
    return Row(
      children: [
        Icon(Icons.light_mode),
        Switch(
          value: useDarkMode,
          onChanged: (value) {
            ref.read(useDarkModeProvider.notifier).setDarkMode(value);
          },
        ),
        Icon(Icons.dark_mode),
      ],
    );
  }
}
