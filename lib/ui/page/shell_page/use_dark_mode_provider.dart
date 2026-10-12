import 'package:flutter_riverpod/flutter_riverpod.dart';

class DarkModeNotifier extends Notifier<bool> {
  @override
  build() {
    return true;
  }

  void setDarkMode(bool isDarkMode) {
    state = isDarkMode;
  }
}

final useDarkModeProvider = NotifierProvider<DarkModeNotifier, bool>(
  DarkModeNotifier.new,
);
