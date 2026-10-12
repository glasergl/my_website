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

  @override
  String get gamingMyGuildWars2Character => 'Mein Guild Wars 2 Charakter';

  @override
  String get gamingMyLoLAccount => 'Mein League of Legends Konto';

  @override
  String get gamingMyCurrentRank => 'Mein aktueller Rang (Oktober 2026)';

  @override
  String get gamingMyHighestRank => 'Mein höchster Rang (2023)';

  @override
  String get diamond => 'Diamant';

  @override
  String get master => 'Meister';

  @override
  String get socialsMyFavouriteVideo => 'Mein Lieblingsvideo';

  @override
  String get codingCustomLoLSetupDescription =>
      'Java GUI Tool für League of Legends, um Runen sowie Gegenstände gegnerspezifisch abzuspeichern';

  @override
  String get codingJLatexDescription =>
      'Java Bibliothek, um LaTeX Code zu generieren, einen Compiler darauf auszuführen und die erstelle PDF Datei zu speichern';

  @override
  String get codingTaskSchedulerDescription =>
      'Java GUI, um Kommandozeilen Befehle anhand eines Cronjobs auf Windows wiederholt ausführen zu lassen';
}
