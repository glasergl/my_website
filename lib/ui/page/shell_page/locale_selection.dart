import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/shell_page/locale_provider.dart';

class LocaleSelection extends ConsumerWidget {
  const LocaleSelection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<Locale>(
      value: ref.watch(localeProvider) ?? const Locale('de', 'DE'),
      items: const [
        DropdownMenuItem(value: Locale('en', 'GB'), child: Text('English')),
        DropdownMenuItem(value: Locale('de', 'DE'), child: Text('Deutsch')),
      ],
      onChanged: (locale) =>
          ref.read(localeProvider.notifier).setLocale(locale),
    );
  }
}
