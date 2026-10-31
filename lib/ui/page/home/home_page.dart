import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/home/my_description.dart';
import 'package:my_website/ui/page/home/my_title.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(children: [MyTitle(), MyDescription()]),
    );
  }
}
