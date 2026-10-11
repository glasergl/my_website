import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DarkModeSwitch extends ConsumerWidget {
  const DarkModeSwitch({super.key});

  static bool _useDarkMode = false;
  static final useDarkModeProvider = Provider<bool>((_) => _useDarkMode);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final d = ref.watch(useDarkModeProvider);
    return Row(children: [Icon(Icons.dark_mode), Switch(
      value: d,
      onChanged: (value) {
        _useDarkMode = value;
        ref.invalidate(useDarkModeProvider);
      },
    ), Icon(Icons.light_mode)]);
  }
}