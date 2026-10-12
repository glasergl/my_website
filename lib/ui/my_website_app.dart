import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/l10n/app_localizations.dart';
import 'package:my_website/ui/page/shell_page/locale_provider.dart';
import 'package:my_website/ui/page/shell_page/use_dark_mode_provider.dart';
import 'package:my_website/ui/page/gaming/gaming_page.dart';
import 'package:my_website/ui/page/home/home_page.dart';
import 'package:my_website/ui/page/shell_page/shell_page.dart';
import 'package:my_website/ui/page/programming/programming_page.dart';
import 'package:my_website/ui/page/socials/socials_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
              ),
              GoRoute(
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
    final locale = ref.watch(localeProvider);
    final useDarkMode = ref.watch(useDarkModeProvider);
    final colorScheme = useDarkMode ? ColorScheme.dark() : ColorScheme.light();
    return MaterialApp.router(
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
      title: "Gabriel Glaser",
      theme: ThemeData(colorScheme: colorScheme),
    );
  }
}
