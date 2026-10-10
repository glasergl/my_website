import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/common/responsive_page.dart';
import 'package:my_website/pages/gaming/lol_elo.dart';

class LolElos extends ConsumerWidget {
  const LolElos({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final children = <Widget>[
      Column(
        children: [
          Text(
            "Mein aktueller Rang (Oktober 2026)",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          LolElo("diamond.png", "Diamant 1"),
        ],
      ),
      Column(
        children: [
          Text(
            "Mein höchster Rang (2023)",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          LolElo("master.png", "Meister", lp: 128),
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
