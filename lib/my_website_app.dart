import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/gaming/gaming_page.dart';
import 'package:my_website/home/home_page.dart';
import 'package:my_website/page_routing/shell_page.dart';

class MyWebsiteApp extends ConsumerWidget {
  static final GoRouter _router = GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) => ShellPage(child: child),
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => HomePage(),
            routes: [
              GoRoute(
                path: 'gaming',
                builder: (context, state) => GamingPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  const MyWebsiteApp({super.key});

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
