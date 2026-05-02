import 'package:alert_hub/core/theme/base_app_theme.dart';
import 'package:flutter/material.dart';

class MaterialTheme extends BaseAppTheme {
  final TextTheme textTheme;

  MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff904b40),
      surfaceTint: Color(0xff904b40),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad4),
      onPrimaryContainer: Color(0xff73342a),
      secondary: Color(0xff686013),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff1e58a),
      onSecondaryContainer: Color(0xff4f4800),
      tertiary: Color(0xff6f5c2e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfffbe0a6),
      onTertiaryContainer: Color(0xff564419),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231918),
      onSurfaceVariant: Color(0xff534341),
      outline: Color(0xff857370),
      outlineVariant: Color(0xffd8c2be),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2c),
      inversePrimary: Color(0xffffb4a7),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff3a0905),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff73342a),
      secondaryFixed: Color(0xfff1e58a),
      onSecondaryFixed: Color(0xff1f1c00),
      secondaryFixedDim: Color(0xffd4c872),
      onSecondaryFixedVariant: Color(0xff4f4800),
      tertiaryFixed: Color(0xfffbe0a6),
      onTertiaryFixed: Color(0xff251a00),
      tertiaryFixedDim: Color(0xffdec48c),
      onTertiaryFixedVariant: Color(0xff564419),
      surfaceDim: Color(0xffe8d6d3),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ee),
      surfaceContainer: Color(0xfffceae7),
      surfaceContainerHigh: Color(0xfff7e4e1),
      surfaceContainerHighest: Color(0xfff1dfdb),
    );
  }

  @override
  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4a7),
      surfaceTint: Color(0xffffb4a7),
      onPrimary: Color(0xff561e16),
      primaryContainer: Color(0xff73342a),
      onPrimaryContainer: Color(0xffffdad4),
      secondary: Color(0xffd4c872),
      onSecondary: Color(0xff363100),
      secondaryContainer: Color(0xff4f4800),
      onSecondaryContainer: Color(0xfff1e58a),
      tertiary: Color(0xffdec48c),
      onTertiary: Color(0xff3e2e04),
      tertiaryContainer: Color(0xff564419),
      onTertiaryContainer: Color(0xfffbe0a6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a1110),
      onSurface: Color(0xfff1dfdb),
      onSurfaceVariant: Color(0xffd8c2be),
      outline: Color(0xffa08c89),
      outlineVariant: Color(0xff534341),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfdb),
      inversePrimary: Color(0xff904b40),
      primaryFixed: Color(0xffffdad4),
      onPrimaryFixed: Color(0xff3a0905),
      primaryFixedDim: Color(0xffffb4a7),
      onPrimaryFixedVariant: Color(0xff73342a),
      secondaryFixed: Color(0xfff1e58a),
      onSecondaryFixed: Color(0xff1f1c00),
      secondaryFixedDim: Color(0xffd4c872),
      onSecondaryFixedVariant: Color(0xff4f4800),
      tertiaryFixed: Color(0xfffbe0a6),
      onTertiaryFixed: Color(0xff251a00),
      tertiaryFixedDim: Color(0xffdec48c),
      onTertiaryFixedVariant: Color(0xff564419),
      surfaceDim: Color(0xff1a1110),
      surfaceBright: Color(0xff423735),
      surfaceContainerLowest: Color(0xff140c0b),
      surfaceContainerLow: Color(0xff231918),
      surfaceContainer: Color(0xff271d1c),
      surfaceContainerHigh: Color(0xff322826),
      surfaceContainerHighest: Color(0xff3d3230),
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