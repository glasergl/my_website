import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/gaming/lol_account.dart';
import 'package:my_website/ui/page/gaming/lol_elos.dart';

class LeagueOfLegends extends ConsumerWidget {
  const LeagueOfLegends({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: 30.0,
      children: [
        Column(
          children: [
            Text(
              "Mein League of Legends Konto",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            LolAccount(
              "thefire7#1893",
              "https://www.leagueofgraphs.com/de/summoner/euw/thefire7-1893",
            ),
          ],
        ),
        LolElos(),
      ],
    );
  }
}
