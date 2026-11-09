import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LolElo extends ConsumerWidget {
  const LolElo(this.eloImage, this.eloStr, {super.key, this.lp});

  final String eloImage;
  final String eloStr;
  final int? lp;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset('assets/images/$eloImage', width: 300.0),
        ),
        Text("$eloStr${lp != null ? " $lp LP" : ""}"),
      ],
    );
  }
}
