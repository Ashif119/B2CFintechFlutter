import 'package:flutter/material.dart';

/// @Created by akash on 18-02-2026.
/// Know more about author at https://akash.cloudemy.in

// ─── Data Model ───────────────────────────────────────────────────────────────

class OnboardingData {
  final String title;
  final String subtitle;
  final Color primaryColor;
  final Color accentColor;
  final IconData icon;

  const OnboardingData({
    required this.title,
    required this.subtitle,
    required this.primaryColor,
    required this.accentColor,
    required this.icon,
  });
}

// Public list — no underscore
List<OnboardingData> getOnboardingPages(BuildContext context) {
  return [
    OnboardingData(
      title: "Smart Alerts,\nAnytime",
      subtitle:
          "Get real-time notifications that matter. Stay ahead with intelligent alerts tailored just for you.",
      primaryColor: Theme.of(context).colorScheme.primary,
      accentColor: const Color(0xFF10B981),
      icon: Icons.notifications_active_rounded,
    ),
    OnboardingData(
      title: "Track Every\nSignal",
      subtitle:
          "Monitor markets, events, and triggers with precision. Never miss a critical moment again.",
      primaryColor: Theme.of(context).colorScheme.primary,
      accentColor: const Color(0xFF10B981),
      icon: Icons.track_changes_rounded,
    ),
    OnboardingData(
      title: "Analyse with\nInsight",
      subtitle:
          "Deep analytics at your fingertips. Understand patterns and make smarter decisions faster.",
      primaryColor: Theme.of(context).colorScheme.primary,
      accentColor: const Color(0xFF10B981),
      icon: Icons.bar_chart_rounded,
    ),
    OnboardingData(
      title: "Act with\nConfidence",
      subtitle:
          "Everything in one place. Set goals, respond instantly, and trade with total clarity.",
      primaryColor: Theme.of(context).colorScheme.primary,
      accentColor: const Color(0xFF10B981),
      icon: Icons.bolt_rounded,
    ),
  ];
}
