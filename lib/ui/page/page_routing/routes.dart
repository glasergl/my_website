import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_website/l10n/app_localizations.dart';
import 'package:my_website/ui/page/page_routing/routing_destination.dart';

List<RoutingDestination> getRoutingDestinations(BuildContext context) {
  return [
    RoutingDestination(
      AppLocalizations.of(context)!.pageLabelHome,
      Icon(Icons.home),
      "/",
    ),
    RoutingDestination(
      AppLocalizations.of(context)!.pageLabelCoding,
      Icon(Icons.code),
      "/programming",
    ),
    RoutingDestination(
      AppLocalizations.of(context)!.pageLabelGaming,
      Icon(Icons.sports_esports),
      "/gaming",
    ),
    RoutingDestination(
      AppLocalizations.of(context)!.pageLabelSocials,
      FaIcon(FontAwesomeIcons.youtube),
      "/socials",
    ),
  ];
}
