import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/l10n/app_localizations.dart';

class PrivacyPolicyButton extends ConsumerWidget {
  const PrivacyPolicyButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () => context.go("/privacy"),
      child: Text(AppLocalizations.of(context)!.privacy),
    );
  }
}
