import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/l10n/app_localizations.dart';
import 'package:my_website/ui/page/shell_page/locale_provider.dart';

class LocaleSelection extends ConsumerWidget {
  const LocaleSelection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<Locale>(
      tooltip: AppLocalizations.of(context)!.selectLanguage,
      icon: const Icon(Icons.language),
      onSelected: (locale) =>
          ref.read(localeProvider.notifier).setLocale(locale),
      itemBuilder: (context) => [
        _localeItem(
          Locale('de'),
          'assets/images/germany_flag.png',
          'Deutsch',
          context,
        ),
        _localeItem(
          Locale('en'),
          'assets/images/great_britain_flag.png',
          'English',
          context,
        ),
      ],
    );
  }

  PopupMenuItem<Locale> _localeItem(
    Locale locale,
    String flagAssertLocation,
    String name,
    BuildContext context,
  ) {
    return PopupMenuItem<Locale>(
      value: locale,
      child: Row(
        children: [
          Image.asset(flagAssertLocation, width: 15.0),
          const SizedBox(width: 12),
          Text(name),
        ],
      ),
    );
  }
}
