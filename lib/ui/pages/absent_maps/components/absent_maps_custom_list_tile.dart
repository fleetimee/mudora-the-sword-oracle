import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';

class FleetimeCustomListTile extends StatelessWidget {
  const FleetimeCustomListTile({
    super.key,
    required this.title,
    required this.rightTitle,
    required this.subtitle,
    required this.imagePath,
    this.subtitleStyle,
    this.trailing,
  });

  final String title;
  final String rightTitle;
  final String subtitle;
  final TextStyle? subtitleStyle;
  final String imagePath;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        height: 25.0,
        fit: BoxFit.contain,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.grayscaleBody,
          fontSize: 14.0,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: subtitleStyle,
      ),
      dense: true,
      trailing: trailing,
    );
  }
}
