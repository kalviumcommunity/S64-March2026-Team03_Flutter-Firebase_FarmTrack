import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primaryGreen = Color(0xFF678D46); // A soft, natural green matching "Farm Fresh"
  static const Color backgroundWhite = Colors.white;
  static const Color alertRed = Color(0xFFFF1A1A); // Red for promotional banner
  
  // Text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF757575);
  static const Color textLight = Colors.white;

  // Category soft backgrounds
  static const Color categoryBgGreen = Color(0xFFF3F8F1);
  static const Color categoryBgYellow = Color(0xFFFFFDF0);
  static const Color categoryBgBlue = Color(0xFFF0F5FF);
  static const Color categoryBgRed = Color(0xFFFFF0F0);
}

class AppTextStyles {
  static const TextStyle headerText = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryGreen,
  );

  static const TextStyle bannerText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textLight,
  );
  
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
}

class AppConstants {
  static const double defaultPadding = 16.0;
  static const double borderRadius = 12.0;
}
