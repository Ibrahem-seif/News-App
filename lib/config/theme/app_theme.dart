import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/colors_manager.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: ColorsManager.white,
        ),
        centerTitle: true,
        backgroundColor: ColorsManager.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.r),
            bottomRight: Radius.circular(50.r),
          ),
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent);
}
