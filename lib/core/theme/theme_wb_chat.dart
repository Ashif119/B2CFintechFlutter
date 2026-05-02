import 'package:alert_hub/core/theme/base_app_theme.dart';
import 'package:flutter/material.dart';

class MaterialTheme extends BaseAppTheme {
  final TextTheme textTheme;

  MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00041f),
      surfaceTint: Color(0xff4d5b96),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff071952),
      onPrimaryContainer: Color(0xff7583c1),
      secondary: Color(0xff625f4b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffeae4cb),
      onSecondaryContainer: Color(0xff696652),
      tertiary: Color(0xff0f0018),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff320c42),
      onTertiaryContainer: Color(0xffa276b2),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffbf8fe),
      onSurface: Color(0xff1b1b1f),
      onSurfaceVariant: Color(0xff454650),
      outline: Color(0xff767681),
      outlineVariant: Color(0xffc6c5d1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303034),
      inversePrimary: Color(0xffb7c4ff),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff03154f),
      primaryFixedDim: Color(0xffb7c4ff),
      onPrimaryFixedVariant: Color(0xff35437c),
      secondaryFixed: Color(0xffe9e3ca),
      onSecondaryFixed: Color(0xff1e1c0d),
      secondaryFixedDim: Color(0xffccc7af),
      onSecondaryFixedVariant: Color(0xff4a4735),
      tertiaryFixed: Color(0xfff8d8ff),
      onTertiaryFixed: Color(0xff2f083f),
      tertiaryFixedDim: Color(0xffe6b5f5),
      onTertiaryFixedVariant: Color(0xff5e376d),
      surfaceDim: Color(0xffdbd9df),
      surfaceBright: Color(0xfffbf8fe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff5f3f8),
      surfaceContainer: Color(0xffefedf2),
      surfaceContainerHigh: Color(0xffe9e7ed),
      surfaceContainerHighest: Color(0xffe4e1e7),
    );
  }

  @override
  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb7c4ff),
      surfaceTint: Color(0xffb7c4ff),
      onPrimary: Color(0xff1d2c64),
      primaryContainer: Color(0xff071952),
      onPrimaryContainer: Color(0xff7583c1),
      secondary: Color(0xffffffff),
      onSecondary: Color(0xff333120),
      secondaryContainer: Color(0xffe9e3ca),
      onSecondaryContainer: Color(0xff696652),
      tertiary: Color(0xffe6b5f5),
      onTertiary: Color(0xff462055),
      tertiaryContainer: Color(0xff320c42),
      onTertiaryContainer: Color(0xffa276b2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff131317),
      onSurface: Color(0xffe4e1e7),
      onSurfaceVariant: Color(0xffc6c5d1),
      outline: Color(0xff8f909b),
      outlineVariant: Color(0xff454650),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe4e1e7),
      inversePrimary: Color(0xff4d5b96),
      primaryFixed: Color(0xffdde1ff),
      onPrimaryFixed: Color(0xff03154f),
      primaryFixedDim: Color(0xffb7c4ff),
      onPrimaryFixedVariant: Color(0xff35437c),
      secondaryFixed: Color(0xffe9e3ca),
      onSecondaryFixed: Color(0xff1e1c0d),
      secondaryFixedDim: Color(0xffccc7af),
      onSecondaryFixedVariant: Color(0xff4a4735),
      tertiaryFixed: Color(0xfff8d8ff),
      onTertiaryFixed: Color(0xff2f083f),
      tertiaryFixedDim: Color(0xffe6b5f5),
      onTertiaryFixedVariant: Color(0xff5e376d),
      surfaceDim: Color(0xff131317),
      surfaceBright: Color(0xff39393d),
      surfaceContainerLowest: Color(0xff0d0e12),
      surfaceContainerLow: Color(0xff1b1b1f),
      surfaceContainer: Color(0xff1f1f23),
      surfaceContainerHigh: Color(0xff292a2e),
      surfaceContainerHighest: Color(0xff343439),
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