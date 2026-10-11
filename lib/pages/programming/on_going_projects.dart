import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_website/pages/programming/git_hub_link.dart';
import 'package:my_website/pages/programming/project.dart';

class OnGoingProjects extends ConsumerWidget {
  const OnGoingProjects({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = <Project>[
      Project(
        "Custom LoL Setup",
        "Setup-Tool für League of Legends mit Custom-Konfigurationen. Ermöglicht schnelle und einfache Champion-Verwaltung.",
        child: GitHubLink("https://github.com/glasergl/custom-lol-setup"),
      ),
      Project(
        "JLaTeX",
        "Java-basierte LaTeX-Bibliothek für die programmatische Generierung von LaTeX-Dokumenten. Vereinfacht die automatisierte Generierung von PDFs mit dynamischen Daten.",
        child: GitHubLink("https://github.com/glasergl/jlatex"),
      ),
      Project(
        "Task Scheduler",
        "Effiziente Task-Scheduling-Anwendung. Eine bessere Alternative zur veralteten Windows Aufgabenplanung.",
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
