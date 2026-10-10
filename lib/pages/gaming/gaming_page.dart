import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/pages/gaming/guild_wars_2.dart';
import 'package:my_website/pages/gaming/league_of_legends.dart';

class GamingPage extends ConsumerWidget {
  const GamingPage({super.key});

  @override
  Widget build(Object context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.all(20.0), child: GuildWars2()),
          LeagueOfLegends(),
        ],
      ),
    );
  }
}
