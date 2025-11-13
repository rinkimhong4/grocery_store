import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const MaterialColor primarySwatch =
      MaterialColor(_primarySwatchPrimaryValue, <int, Color>{
        50: Color(0xFFF0F4FF),
        100: Color(0xFFE0E7FF),
        200: Color(0xFFCCD4FF),
        300: Color(0xFF6C8BFF),
        400: Color(0xFF5A75E0),
        500: Color(_primarySwatchPrimaryValue),
        600: Color(0xFF364885),
        700: Color(0xFF26357A),
        800: Color(0xFF1D283F),
        900: Color(0xFF192550),
      });

  static const int _primarySwatchPrimaryValue = 0xFF4457B4;

  static const MaterialColor secondarySwatch =
      MaterialColor(_secondarySwatchPrimaryValue, <int, Color>{
        50: Color(0xFFFFF5F5),
        100: Color(0xFFFFEBEB),
        200: Color(0xFFFFDCDC),
        300: Color(0xFFF9B8B8),
        400: Color(0xFFF68C8C),
        500: Color(_secondarySwatchPrimaryValue),
        600: Color(0xFFE94545),
        700: Color(0xFFDC3535),
        800: Color(0xFFB32626),
        900: Color(0xFF8A1A1A),
      });
  static const int _secondarySwatchPrimaryValue = 0xFFF45B5B;

  static final ColorScheme _lightScheme =
      ColorScheme.fromSwatch(
        brightness: Brightness.light,
        primarySwatch: primarySwatch,
        backgroundColor: AppColors.background,
      ).copyWith(
        primary: primarySwatch[900],
        secondary: secondarySwatch[500],
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        surface: Colors.white,
        onSurface: AppColors.textDark,
        error: secondarySwatch[500],
        onError: Colors.white,
      );

  static final TextTheme _textTheme = GoogleFonts.interTextTheme().copyWith(
    headlineLarge: GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: _lightScheme.onSurface,
    ),
    titleLarge: GoogleFonts.inter(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: _lightScheme.onSurface,
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: _lightScheme.onPrimary,
    ),
    bodyMedium: GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: _lightScheme.onSurface,
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: _lightScheme,
    scaffoldBackgroundColor: AppColors.background,
    fontFamily: GoogleFonts.inter().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: AppTheme.primarySwatch[900],
      elevation: 0,
      centerTitle: true,
      foregroundColor: Colors.white,
      toolbarHeight: 56,
    ),
    iconTheme: IconThemeData(color: _lightScheme.onSurface),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 3,
      shadowColor: AppColors.cardShadow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.zero,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: primarySwatch[100]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFF4457B4)),
      ),
      hintStyle: TextStyle(color: AppColors.textLight2),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primarySwatch[700],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        textStyle: const TextStyle(fontWeight: FontWeight.w700),
      ),
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      tileColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      horizontalTitleGap: 12,
    ),
    shadowColor: AppColors.cardShadow,
    textTheme: _textTheme,
  );

  static final ColorScheme _darkScheme =
      ColorScheme.fromSwatch(
        brightness: Brightness.dark,
        primarySwatch: primarySwatch,
        backgroundColor: const Color(0xFF121212),
      ).copyWith(
        primary: primarySwatch[300],
        secondary: secondarySwatch[300],
        onPrimary: AppColors.textDark,
        onSecondary: AppColors.textDark,
        surface: const Color(0xFF1E1E1E),
        onSurface: Colors.white.withValues(alpha: .87),
        error: secondarySwatch[400],
        onError: AppColors.textDark,
      );

  static final TextTheme _darkTextTheme = GoogleFonts.interTextTheme().copyWith(
    headlineLarge: GoogleFonts.inter(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: _darkScheme.onSurface,
    ),
    titleLarge: GoogleFonts.inter(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: _darkScheme.onSurface,
    ),
    labelLarge: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: _darkScheme.onPrimary,
    ),
    bodyMedium: GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: _darkScheme.onSurface,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: _darkScheme,
    scaffoldBackgroundColor: _darkScheme.surface,
    fontFamily: GoogleFonts.inter().fontFamily,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      foregroundColor: Colors.white,
    ),
    iconTheme: IconThemeData(color: _darkScheme.onSurface),
    cardTheme: CardThemeData(
      color: _darkScheme.surface,
      elevation: 2,
      shadowColor: Colors.black45,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.zero,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF2A2A2A),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white24),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: primarySwatch[300]!),
      ),
      hintStyle: const TextStyle(color: Colors.white60),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primarySwatch[300],
        foregroundColor: AppColors.textDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        textStyle: const TextStyle(fontWeight: FontWeight.w700),
      ),
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      tileColor: _darkScheme.surface,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      horizontalTitleGap: 12,
    ),
    shadowColor: Colors.black45,
    textTheme: _darkTextTheme,
  );
}

class AppColors {
  AppColors._();

  static const background = Color(0xFFF7F8FA);
  static const cardShadow = Color(0x1A000000);
  static const blur = Color(0xFFEAF0FF);
  static const primaryDark = Color(0xFF192550);
  static const primaryNavy = Color(0xFF26357A);
  static const primaryBlue = Color(0xFF4457B4);
  static const primaryLight = Color(0xFF6C8BFF);
  static const secondaryOrange = Color(0xFFF45B5B);
  static const secondaryPeach1 = Color(0xFFF68C8C);
  static const secondaryPeach2 = Color(0xFFF9B8B8);
  static const secondaryPeach3 = Color(0xFFFDD0D0);
  static const tertiaryGreen = Color(0xFF2AC940);
  static const tertiaryMint1 = Color(0xFF5DDC76);
  static const tertiaryMint2 = Color(0xFFA2EAB3);
  static const tertiaryMint3 = Color(0xFFD2F6DB);
  static const textDark = Color(0xFF192550);
  static const textLight1 = Color(0xFFA8B6D6);
  static const textLight2 = Color(0xFFC7D2E9);
  static const textLight3 = Color(0xFFE8EDF7);
  static const bgLightBlue = Color(0xFFEAF0FF);
  static const bgWhite = Color(0xFFFAFBFD);
  static const white = Colors.white;
  static var splash = const Color(0xFF192550);
  static var redColor = const Color(0xFFF45B5B);
  static var green = Color(0xFF2AC940);
  static const darkColor = Color(0xFF192550);
  static const darkColorLight = Color(0xFF26357A);
  static const darkIconColor = Color(0xFF4457B4);
  static const greyBlue = Color(0xFFA8B6D6);
  static const grey = Color(0xFFC7D2E9);
  static const blackGrey = Color(0xFF192550);
}

class AppTextStyle {
  AppTextStyle._();

  static TextStyle inter14({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle inter15({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle inter16({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle inter18({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle interBold18({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle interBold16({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle interBold20({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle inter20({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle regular10({
    double? height,
    Color? color,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      height: height,
      decoration: underline == true
          ? TextDecoration.underline
          : TextDecoration.none,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 10,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular11({
    double? height,
    Color? color,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      height: height,
      decoration: underline == true
          ? TextDecoration.underline
          : TextDecoration.none,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 11,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular12({
    double? height,
    Color? color,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      height: height,
      decoration: underline == true
          ? TextDecoration.underline
          : TextDecoration.none,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 14,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular13({
    double? height,
    Color? color,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      height: height,
      decoration: underline == true
          ? TextDecoration.underline
          : TextDecoration.none,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 15,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular14({
    double? height,
    Color? color,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      height: height,
      decoration: underline == true
          ? TextDecoration.underline
          : TextDecoration.none,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 14,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular14s({
    double? height,
    Color? color,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      height: height,
      decoration: underline == true
          ? TextDecoration.underline
          : TextDecoration.none,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 14,
      color: color ?? Colors.black,
    );
  }

  static TextStyle regular16({
    Color? color,
    double? height,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      decoration: underline == true ? TextDecoration.underline : null,
      fontWeight: FontWeight.w400,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 16,
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular17({
    Color? color,
    double? height,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      decoration: underline == true ? TextDecoration.underline : null,
      fontWeight: FontWeight.w400,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 17,
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular16NoKhmer({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular15({
    Color? color,
    double? height,
    bool? underline,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.inter(
      decoration: underline == true ? TextDecoration.underline : null,
      fontWeight: FontWeight.w400,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontSize: 15,
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular18({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular19({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular20({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: color ?? Colors.black,
      height: height,
    );
  }

  static TextStyle regular22({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 22,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle regular24({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle regular28({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 28,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle medium14({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle medium16({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle medium18({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle medium28({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 28,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold14({Color? color, double? height}) {
    return GoogleFonts.inter(
      height: height,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold15({Color? color, double? height}) {
    return GoogleFonts.inter(
      height: height,
      fontWeight: FontWeight.w700,
      fontSize: 15,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold14NoKh({Color? color, double? height}) {
    return GoogleFonts.inter(
      height: height,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold10({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 10,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold5({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 5,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold12({Color? color, double? height}) {
    return GoogleFonts.inter(
      height: height,
      fontWeight: FontWeight.w700,
      fontSize: 12,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold17({Color? color, double? height}) {
    return GoogleFonts.inter(
      height: height,
      fontWeight: FontWeight.w700,
      fontSize: 17,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold18({Color? color, double? height}) {
    return GoogleFonts.inter(
      height: height,
      fontWeight: FontWeight.w700,
      fontSize: 18,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold16({Color? color, double? height}) {
    return GoogleFonts.inter(
      height: height,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold13({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 13,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold19({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      height: height,
      fontSize: 19,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold20({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold22({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 22,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold24({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: height,
      color: color ?? AppColors.white,
    );
  }

  static TextStyle bold26({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 26,
      height: height,
      color: color ?? Colors.black,
    );
  }

  static TextStyle bold28({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 28,
      height: height,
      color: color ?? Colors.black,
    );
  }

  static TextStyle bold35({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 35,
      height: height,
      color: color ?? Colors.black,
    );
  }

  static TextStyle bold25({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 25,
      height: height,
      color: color ?? Colors.black,
    );
  }

  static TextStyle bold40({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 40,
      height: height,
      color: color ?? Colors.black,
    );
  }

  static TextStyle bold50({Color? color, double? height}) {
    return GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 50,
      height: height,
      color: color ?? AppColors.white,
    );
  }
}
