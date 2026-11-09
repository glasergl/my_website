import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:my_website/ui/legal/privacy_policy_provider.dart';

class PrivacyPolicy extends ConsumerWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<String> asyncPrivacy = ref.watch(privacyPolicyProvider);
    return asyncPrivacy.when(
      data: (privacy) => Markdown(data: privacy),
      error: (o, err) => Container(),
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}
