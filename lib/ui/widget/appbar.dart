import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';

class AppBarDefault extends AppBar {
  AppBarDefault({
    Key? key,
    required String title,
    List<Widget>? actions,
  }) : super(
          key: key,
          title: Text(
            title,
            style: const TextStyle(
              color: AppColors.grayscaleTitle,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 0.5,
            ),
          ),
          centerTitle: true,
          actions: actions,
        );
}

class AppBarWithBack extends AppBar {
  AppBarWithBack({
    Key? key,
    required String title,
    List<Widget>? actions,
    Color? backgroundColor,
    Widget? leading,
  }) : super(
            key: key,
            leading: leading,
            title: Text(
              title,
              style: const TextStyle(
                color: AppColors.grayscaleTitle,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 0.5,
              ),
            ),
            actions: actions,
            backgroundColor: backgroundColor);
}

class AppBarWithCross extends AppBar {
  AppBarWithCross({
    Key? key,
    required String title,
    List<Widget>? actions,
    bool? centerTitle,
    Color? backgroundColor,
  }) : super(
          key: key,
          centerTitle: centerTitle ?? false,
          backgroundColor: backgroundColor ?? Colors.white,
          title: Text(
            title,
            style: const TextStyle(
              color: AppColors.grayscaleTitle,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 0.5,
            ),
          ),
          actions: actions,
        );
}
