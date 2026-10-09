import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/home/home_page.dart';

class MyWebsiteApp extends ConsumerWidget {
  final GoRouter _router = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => HomePage())],
  );

  MyWebsiteApp({super.key});

  @override
  Widget build(context, ref) {
    final colorScheme = ColorScheme.light();
    return MaterialApp.router(
      routerConfig: _router,
      title: "Gabriel Glaser",
      theme: ThemeData(colorScheme: colorScheme),
    );
  }
}
