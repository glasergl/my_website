import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_website/l10n/app_localizations.dart';
import 'package:my_website/ui/legal/imprint.dart';
import 'package:my_website/ui/legal/privacy_policy.dart';
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
        pageBuilder: (context, state, child) => NoTransitionPage<void>(
          key: state.pageKey,
          child: ShellPage(child: child),
        ),
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => NoTransitionPage<void>(
              key: state.pageKey,
              child: SelectionArea(child: HomePage()),
            ),
            routes: [
              GoRoute(
                path: 'programming',
                pageBuilder: (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: SelectionArea(child: const ProgrammingPage()),
                ),
              ),
              GoRoute(
                path: 'gaming',
                pageBuilder: (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: SelectionArea(child: GamingPage()),
                ),
              ),
              GoRoute(
                path: 'socials',
                pageBuilder: (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: SelectionArea(child: SocialsPage()),
                ),
              ),
              GoRoute(
                path: 'imprint',
                pageBuilder: (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: SelectionArea(child: Imprint()),
                ),
              ),
              GoRoute(
                path: 'privacy',
                pageBuilder: (context, state) => NoTransitionPage<void>(
                  key: state.pageKey,
                  child: SelectionArea(child: PrivacyPolicy()),
                ),
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
