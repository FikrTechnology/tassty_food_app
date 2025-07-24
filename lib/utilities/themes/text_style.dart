part of 'themes.dart';
class AppTypography {
  static const String apfelGrotezk = 'ApfelGrotezk';
  static const String plusJakartaSans = 'PlusJakartaSans';

  static final TextTheme textTheme = TextTheme(
    // Title Font - apfelGrotezk
    headlineLarge: TextStyle(
      fontFamily: apfelGrotezk,
      fontWeight: FontWeight.w700,
      fontSize: 32,
    ),
    headlineMedium: TextStyle(
      fontFamily: apfelGrotezk,
      fontWeight: FontWeight.w500,
      fontSize: 28,
    ),
    headlineSmall: TextStyle(
      fontFamily: apfelGrotezk,
      fontWeight: FontWeight.w400,
      fontSize: 24,
    ),

    // Body Font - PlusJakartaSans
    bodyLarge: TextStyle(
      fontFamily: plusJakartaSans,
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontFamily: plusJakartaSans,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: plusJakartaSans,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),

    // Button text
    labelLarge: TextStyle(
      fontFamily: plusJakartaSans,
      fontWeight: FontWeight.w600,
      fontSize: 14,
    ),
    labelMedium: TextStyle(
      fontFamily: plusJakartaSans,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  );
}