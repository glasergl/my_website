import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/legal/imprint_button.dart';

class BottomButtonBar extends ConsumerWidget {
  const BottomButtonBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(mainAxisAlignment: .center, children: [ImprintButton()]);
  }
}
