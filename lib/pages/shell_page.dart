import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_website/page_routing/route_select_widget.dart';
import 'package:my_website/page_routing/routing_destination.dart';
import 'package:my_website/pages/logo.dart';
import 'package:my_website/common/responsive_page.dart';
import 'package:my_website/pages/dark_mode_switch.dart';
import 'package:my_website/page_routing/routing_bar.dart';

class ShellPage extends ConsumerWidget {
  const ShellPage({super.key, required this.child});

  final Widget child;

  static const List<RoutingDestination> routingDestinations = [
    RoutingDestination("Startseite", Icon(Icons.home), "/"),
    RoutingDestination("Programmieren", Icon(Icons.code), "/programming"),
    RoutingDestination("Zocken", Icon(Icons.sports_esports), "/gaming"),
    RoutingDestination(
      "Soziales",
      FaIcon(FontAwesomeIcons.youtube),
      "/socials",
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsivePage(
      landscape: (context, ref) => Scaffold(
        appBar: AppBar(
          title: Logo(),
          actions: [
            ...List.generate(
              ShellPage.routingDestinations.length,
              (i) => Container(
                margin: EdgeInsets.fromLTRB(5, 0.0, 5, 0.0),
                child: RouteSelectWidget(ShellPage.routingDestinations[i]),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 0.0, 5, 0.0),
              child: DarkModeSwitch(),
            ),
          ],
        ),
        body: child,
      ),
      portrait: (context, ref) => Scaffold(
        appBar: AppBar(title: Logo(), actions: [DarkModeSwitch()]),
        body: child,
        bottomNavigationBar: BottomAppBar(child: RoutingBar()),
      ),
    );
  }
}
