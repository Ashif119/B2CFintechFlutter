import "package:alert_hub/core/utils/extensions.dart";
import "package:flutter/material.dart";


abstract class BaseAppTheme {
  ThemeData light();
  ThemeData dark();
}

/// displayLarge → size: 57.0, weight: FontWeight.w400
/// displayMedium → size: 45.0, weight: FontWeight.w400
/// displaySmall → size: 36.0, weight: FontWeight.w400
/// headlineLarge → size: 32.0, weight: FontWeight.w400
/// headlineMedium → size: 28.0, weight: FontWeight.w400
/// headlineSmall → size: 24.0, weight: FontWeight.w400
/// titleLarge → size: 22.0, weight: FontWeight.w400
/// titleMedium → size: 16.0, weight: FontWeight.w500
/// titleSmall → size: 14.0, weight: FontWeight.w500
/// bodyLarge → size: 16.0, weight: FontWeight.w400
/// bodyMedium → size: 14.0, weight: FontWeight.w400
/// bodySmall → size: 12.0, weight: FontWeight.w400
/// labelLarge → size: 14.0, weight: FontWeight.w500
/// labelMedium → size: 12.0, weight: FontWeight.w500
/// labelSmall → size: 11.0, weight: FontWeight.w500
TextTheme createTextTheme(
  BuildContext context,
  String bodyFontFamily,
  String displayFontFamily,
) {
  final base = Theme.of(context).textTheme;
  final bodyTextTheme = base.apply(fontFamily: bodyFontFamily);
  final displayTextTheme = base.apply(fontFamily: displayFontFamily);

  return bodyTextTheme.copyWith(
    /// displayLarge → size: 57.0, weight: FontWeight.w400
    /// displayMedium → size: 45.0, weight: FontWeight.w400
    /// displaySmall → size: 36.0, weight: FontWeight.w400
    displayLarge: displayTextTheme.displayLarge,
    displayMedium: displayTextTheme.displayMedium,
    displaySmall: displayTextTheme.displaySmall,

    /// headlineLarge → size: 32.0, weight: FontWeight.w400
    /// headlineMedium → size: 28.0, weight: FontWeight.w400
    /// headlineSmall → size: 24.0, weight: FontWeight.w400
    headlineLarge: displayTextTheme.headlineLarge,
    headlineMedium: displayTextTheme.headlineMedium,
    headlineSmall: bodyTextTheme.headlineSmall,

    /// titleLarge → size: 22.0, weight: FontWeight.w400
    /// titleMedium → size: 16.0, weight: FontWeight.w500
    /// titleSmall → size: 14.0, weight: FontWeight.w500
    titleLarge: bodyTextTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
    titleMedium: bodyTextTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
    titleSmall: bodyTextTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),

    /// bodyLarge → size: 16.0, weight: FontWeight.w400
    /// bodyMedium → size: 14.0, weight: FontWeight.w400
    /// bodySmall → size: 12.0, weight: FontWeight.w400
    bodyLarge: bodyTextTheme.bodyLarge?.copyWith(color: context.colorScheme.outlineVariant),
    bodyMedium: bodyTextTheme.bodyMedium?.copyWith(color: context.colorScheme.outlineVariant),
    bodySmall: bodyTextTheme.bodySmall?.copyWith(color: context.colorScheme.outlineVariant),

    /// labelLarge → size: 14.0, weight: FontWeight.w500
    /// labelMedium → size: 12.0, weight: FontWeight.w500
    /// labelSmall → size: 11.0, weight: FontWeight.w500
    labelLarge: bodyTextTheme.labelLarge?.copyWith(
      fontWeight: FontWeight.w600,
      color: context.colorScheme.outlineVariant,
    ),
    labelMedium: bodyTextTheme.labelMedium?.copyWith(
      fontWeight: FontWeight.w600,
      color: context.colorScheme.outlineVariant,
    ),
    labelSmall: bodyTextTheme.labelSmall?.copyWith(
      fontWeight: FontWeight.w600,
      color: context.colorScheme.outlineVariant,
    ),
  );
}

void printAllFontSizes(BuildContext context) {
  final t = context.textStyle;

  void log(String name, TextStyle? s) {
    debugPrint(
      '$name → size: ${s?.fontSize}, weight: ${s?.fontWeight}',
    );
  }

  log('displayLarge', t.displayLarge);
  log('displayMedium', t.displayMedium);
  log('displaySmall', t.displaySmall);

  log('headlineLarge', t.headlineLarge);
  log('headlineMedium', t.headlineMedium);
  log('headlineSmall', t.headlineSmall);

  log('titleLarge', t.titleLarge);
  log('titleMedium', t.titleMedium);
  log('titleSmall', t.titleSmall);

  log('bodyLarge', t.bodyLarge);
  log('bodyMedium', t.bodyMedium);
  log('bodySmall', t.bodySmall);

  log('labelLarge', t.labelLarge);
  log('labelMedium', t.labelMedium);
  log('labelSmall', t.labelSmall);
}

