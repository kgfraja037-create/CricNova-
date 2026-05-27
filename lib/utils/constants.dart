import 'package:flutter/material.dart';

// Colors
class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF00D9FF); // Electric Blue
  static const Color primaryDark = Color(0xFF0099CC);
  static const Color secondary = Color(0xFF9D00FF); // Neon Purple
  
  // Background
  static const Color background = Color(0xFF0A0E27); // Deep Black
  static const Color surfaceDark = Color(0xFF1A1F3A);
  static const Color surface = Color(0xFF2D3561);
  
  // Text
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB0B8D4);
  static const Color textHint = Color(0xFF7A8299);
  
  // Status
  static const Color success = Color(0xFF00FF9D);
  static const Color error = Color(0xFFFF1744);
  static const Color warning = Color(0xFFFFC107);
  static const Color info = Color(0xFF00D9FF);
  
  // Gradients
  static const LinearGradient neonGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient darkGradient = LinearGradient(
    colors: [background, surfaceDark],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

// Typography
class AppTypography {
  static const String fontPoppins = 'Poppins';
  static const String fontInter = 'Inter';
  
  // Heading Styles
  static const TextStyle heading1 = TextStyle(
    fontFamily: fontPoppins,
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle heading2 = TextStyle(
    fontFamily: fontPoppins,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle heading3 = TextStyle(
    fontFamily: fontPoppins,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  
  // Body Styles
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontInter,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontInter,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );
  
  static const TextStyle bodySmall = TextStyle(
    fontFamily: fontInter,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textHint,
  );
  
  // Button Styles
  static const TextStyle buttonLarge = TextStyle(
    fontFamily: fontPoppins,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.background,
  );
  
  static const TextStyle buttonSmall = TextStyle(
    fontFamily: fontPoppins,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );
}

// Spacing
class AppSpacing {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;
}

// Border Radius
class AppRadius {
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double full = 999;
}

// API Endpoints
class ApiEndpoints {
  static const String baseUrl = 'https://api.cricnova.com';
  static const String auth = '/api/auth';
  static const String users = '/api/users';
  static const String tournaments = '/api/tournaments';
  static const String matches = '/api/matches';
  static const String players = '/api/players';
}

// App Config
class AppConfig {
  static const String appName = 'CricNova';
  static const String appVersion = '1.0.0';
  static const String packageName = 'com.cricnova.app';
  
  static const String supportWhatsApp = '8294742944';
  static const String supportInstagram = 'ig.xcal';
  static const String supportTelegram = 'cricnova_support';
}
