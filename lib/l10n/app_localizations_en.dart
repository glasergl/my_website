// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get personCharacterization =>
      'MSc. Computer Science • Coding • Gaming';

  @override
  String get pageLabelHome => 'Home';

  @override
  String get pageLabelCoding => 'Coding';

  @override
  String get pageLabelGaming => 'Gaming';

  @override
  String get pageLabelSocials => 'Socials';

  @override
  String get gamingMyGuildWars2Character => 'My Guild Wars 2 Character';

  @override
  String get gamingMyLoLAccount => 'My League of Legends Account';

  @override
  String get gamingMyCurrentRank => 'My current Elo (October 2026)';

  @override
  String get gamingMyHighestRank => 'My highest Elo (2023)';

  @override
  String get diamond => 'Diamond';

  @override
  String get master => 'Master';

  @override
  String get socialsMyFavouriteVideo => 'Mein favourite Video';

  @override
  String get codingCustomLoLSetupDescription =>
      'Java GUI tool for League of Legends to store runes and items depending per match-up';

  @override
  String get codingJLatexDescription =>
      'Java library to generate LaTeX code, call a compiler on it and store the generated PDF file';

  @override
  String get codingTaskSchedulerDescription =>
      'Java GUI to regularly run command line instructions according to a cronjob on Windows';
}
