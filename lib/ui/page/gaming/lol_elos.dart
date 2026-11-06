import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/l10n/app_localizations.dart';
import 'package:my_website/ui/page/common/responsive_page.dart';
import 'package:my_website/ui/page/gaming/lol_elo.dart';

class LolElos extends ConsumerWidget {
  const LolElos({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final children = <Widget>[
      Column(
        children: [
          Text(
            AppLocalizations.of(context)!.gamingMyHighestRank,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          LolElo("master.png", AppLocalizations.of(context)!.master, lp: 331),
        ],
      ),
    ];
    return ResponsivePage(
      landscape: (context, ref) => Row(
        spacing: 50.0,
        mainAxisAlignment: .center,
        crossAxisAlignment: .start,
        children: children,
      ),
      portrait: (context, ref) => Column(spacing: 20.0, children: children),
    );
  }
}
