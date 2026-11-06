// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get personCharacterization =>
      'MSc. Informatik Student • Programmieren • Zocken';

  @override
  String get welcomeMessage =>
      'Willkommen auf meiner Website, die ich nutze, um meine Interessen und Projekte zu teilen. Hauptsächlich interessiere ich mich für alles rund um Computer. Insbesondere Programmieren, Zocken, 2D/3D Computergrafik und Videoschnitt. Als Ausgleich für die ganzen digitalen Hobbys koche ich gerne.';

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
  String get gamingMyHighestRank => 'Mein höchster Rang (2026)';

  @override
  String get diamond => 'Diamant';

  @override
  String get master => 'Meister';

  @override
  String get grandmaster => 'Großmeister';

  @override
  String get challenger => 'Herausforderer';

  @override
  String get socialsMyFavouriteVideo => 'Mein Lieblingsvideo';

  @override
  String get codingCustomLoLSetupDescription =>
      'Java Grafische Anwendung für League of Legends, um Runen sowie Gegenstände gegnerspezifisch abzuspeichern';

  @override
  String get codingJLatexDescription =>
      'Java Bibliothek, um LaTeX Code zu generieren, einen Compiler darauf auszuführen und die erstelle PDF Datei zu speichern';

  @override
  String get codingTaskSchedulerDescription =>
      'Java Grafische Anwendung, um Kommandozeilen Befehle anhand eines Cronjobs auf Windows wiederholt ausführen zu lassen';
}
