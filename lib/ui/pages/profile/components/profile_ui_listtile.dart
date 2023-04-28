import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
    required this.icon,
  });

  final String imagePath;
  final String title;
  final void Function()? onTap;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: CircleAvatar(
          radius: 24.0,
          backgroundColor: AppColors.grayscaleBackground,
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
            height: 24.0,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            height: 1.5,
            letterSpacing: 0.5,
            color: AppColors.grayscaleTitle,
          ),
        ),
        trailing: icon,
      ),
    );
  }
}
