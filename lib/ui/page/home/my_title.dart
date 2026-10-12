import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/l10n/app_localizations.dart';

class MyTitle extends ConsumerWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          "Gabriel Glaser",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(AppLocalizations.of(context)!.personCharacterization),
      ],
    );
  }
}
