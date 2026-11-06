import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/legal/imprint_provider.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

class Imprint extends ConsumerWidget {
  const Imprint({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> asyncImprint = ref.watch(imprintProvider);
    return asyncImprint.when(
      data: (imprint) => Markdown(data: imprint),
      error: (o, err) => Container(),
      loading: () => CircularProgressIndicator(),
    );
  }
}
