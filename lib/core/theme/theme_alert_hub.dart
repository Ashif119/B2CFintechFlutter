import 'package:alert_hub/core/theme/base_app_theme.dart';
import 'package:flutter/material.dart';

class MaterialTheme extends BaseAppTheme {
  final TextTheme textTheme;

  MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004c4c),
      surfaceTint: Color(0xff096969),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff006666),
      onPrimaryContainer: Color(0xff93e1e0),
      secondary: Color(0xff625f4b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffeae4cb),
      onSecondaryContainer: Color(0xff696652),
      tertiary: Color(0xff51396b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6a5084),
      onTertiaryContainer: Color(0xffe5c8ff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff7faf9),
      onSurface: Color(0xff181c1c),
      onSurfaceVariant: Color(0xff3f4948),
      outline: Color(0xff6f7979),
      outlineVariant: Color(0xffbec9c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3131),
      inversePrimary: Color(0xff86d4d3),
      primaryFixed: Color(0xffa2f0ef),
      onPrimaryFixed: Color(0xff002020),
      primaryFixedDim: Color(0xff86d4d3),
      onPrimaryFixedVariant: Color(0xff004f4f),
      secondaryFixed: Color(0xffe9e3ca),
      onSecondaryFixed: Color(0xff1e1c0d),
      secondaryFixedDim: Color(0xffccc7af),
      onSecondaryFixedVariant: Color(0xff4a4735),
      tertiaryFixed: Color(0xfff0dbff),
      onTertiaryFixed: Color(0xff270e40),
      tertiaryFixedDim: Color(0xffd9baf6),
      onTertiaryFixedVariant: Color(0xff553c6e),
      surfaceDim: Color(0xffd7dbda),
      surfaceBright: Color(0xfff7faf9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f3),
      surfaceContainer: Color(0xffebeeee),
      surfaceContainerHigh: Color(0xffe6e9e8),
      surfaceContainerHighest: Color(0xffe0e3e2),
    );
  }

  @override
  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff004c4c),
      surfaceTint: Color(0xff86d4d3),
      onPrimary: Color(0xff003737),
      primaryContainer: Color(0xff006666),
      onPrimaryContainer: Color(0xff93e1e0),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff333120),
      secondaryContainer: Color(0xffe9e3ca),
      onSecondaryContainer: Color(0xff696652),
      tertiary: Color(0xffd9baf6),
      onTertiary: Color(0xff3d2556),
      tertiaryContainer: Color(0xff6a5084),
      onTertiaryContainer: Color(0xffe5c8ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101414),
      onSurface: Color(0xffe0e3e2),
      onSurfaceVariant: Color(0xffbec9c8),
      outline: Color(0xff889392),
      outlineVariant: Color(0xff3f4948),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e3e2),
      inversePrimary: Color(0xff096969),
      primaryFixed: Color(0xffa2f0ef),
      onPrimaryFixed: Color(0xff002020),
      primaryFixedDim: Color(0xff86d4d3),
      onPrimaryFixedVariant: Color(0xff004f4f),
      secondaryFixed: Color(0xffe9e3ca),
      onSecondaryFixed: Color(0xff1e1c0d),
      secondaryFixedDim: Color(0xffccc7af),
      onSecondaryFixedVariant: Color(0xff4a4735),
      tertiaryFixed: Color(0xfff0dbff),
      onTertiaryFixed: Color(0xff270e40),
      tertiaryFixedDim: Color(0xffd9baf6),
      onTertiaryFixedVariant: Color(0xff553c6e),
      surfaceDim: Color(0xff101414),
      surfaceBright: Color(0xff363a3a),
      surfaceContainerLowest: Color(0xff0b0f0f),
      surfaceContainerLow: Color(0xff181c1c),
      surfaceContainer: Color(0xff1c2020),
      surfaceContainerHigh: Color(0xff272b2a),
      surfaceContainerHighest: Color(0xff323535),
    );
  }

  @override
  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );
}
