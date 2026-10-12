import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/l10n/app_localizations.dart';

class GuildWars2 extends ConsumerWidget {
  const GuildWars2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 7.0,
      children: [
        Text(
          AppLocalizations.of(context)!.gamingMyGuildWars2Character,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset('assets/images/karl_the_rock.png', width: 500.0),
        ),
      ],
    );
  }
}
