import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/l10n/app_localizations.dart';

class MyDescription extends ConsumerWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 450.0,
        child: Text(
          AppLocalizations.of(context)!.welcomeMessage,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
