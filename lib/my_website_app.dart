import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/pages/dark_mode_switch.dart';
import 'package:my_website/pages/gaming/gaming_page.dart';
import 'package:my_website/pages/home/home_page.dart';
import 'package:my_website/pages/shell_page.dart';
import 'package:my_website/pages/programming/programming_page.dart';
import 'package:my_website/pages/socials/socials_page.dart';

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
                path: 'programming',
                builder: (context, state) => ProgrammingPage(),
              ),GoRoute(
                path: 'gaming',
                builder: (context, state) => GamingPage(),
              ),
              GoRoute(
                path: 'socials',
                builder: (context, state) => SocialsPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  const MyWebsiteApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useDarkMode = ref.watch(DarkModeSwitch.useDarkModeProvider);
    final colorScheme = useDarkMode ? ColorScheme.dark() : ColorScheme.light();
    return MaterialApp.router(
      routerConfig: _router,
      title: "Gabriel Glaser",
      theme: ThemeData(colorScheme: colorScheme),
    );
  }
}
