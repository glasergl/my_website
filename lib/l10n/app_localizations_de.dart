// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get personCharacterization =>
      'MSc. Informatik • Programmieren • Zocken';

  @override
  String get pageLabelHome => 'Startseite';

  @override
  String get pageLabelCoding => 'Programmieren';

  @override
  String get pageLabelGaming => 'Zocken';

  @override
  String get pageLabelSocials => 'Soziales';
}
