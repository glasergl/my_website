import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/l10n/app_localizations.dart';
import 'package:my_website/ui/page/programming/git_hub_link.dart';
import 'package:my_website/ui/page/programming/project.dart';

class OnGoingProjects extends ConsumerWidget {
  const OnGoingProjects({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = <Project>[
      Project(
        "Custom LoL Setup",
        AppLocalizations.of(context)!.codingCustomLoLSetupDescription,
        child: GitHubLink("https://github.com/glasergl/custom-lol-setup"),
      ),
      Project(
        "JLaTeX",
        AppLocalizations.of(context)!.codingJLatexDescription,
        child: GitHubLink("https://github.com/glasergl/jlatex"),
      ),
      Project(
        "Task Scheduler",
        AppLocalizations.of(context)!.codingTaskSchedulerDescription,
        child: GitHubLink("https://github.com/glasergl/task-scheduler"),
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) => constraints.maxWidth < 900.0
          ? Column(spacing: 25.0, children: projects)
          : Row(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              spacing: 25.0,
              children: projects,
            ),
    );
  }
}
