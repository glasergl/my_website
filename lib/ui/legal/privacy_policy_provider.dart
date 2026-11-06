import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/shell_page/locale_provider.dart';

final privacyPolicyProvider = FutureProvider((ref) async {
  final locale = ref.watch(localeProvider);
  return rootBundle.loadString(
    'assets/legal/privacy_${locale.languageCode}.md',
  );
});
