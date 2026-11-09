import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/gaming/guild_wars_2.dart';
import 'package:my_website/ui/page/gaming/league_of_legends.dart';

class GamingPage extends ConsumerWidget {
  const GamingPage({super.key});

  @override
  Widget build(Object context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Wrap(
        alignment: .center,
        children: [GuildWars2(), LeagueOfLegends()],
      ),
    );
  }
}
