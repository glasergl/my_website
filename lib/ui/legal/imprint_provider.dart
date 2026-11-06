import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/ui/page/shell_page/locale_provider.dart';

final imprintProvider = FutureProvider((ref) async {
  final locale = ref.watch(localeProvider);
  return rootBundle.loadString('legal/imprint_${locale.languageCode}.md');
});
