import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';

class FleetimeCustomListTile extends StatelessWidget {
  const FleetimeCustomListTile({
    super.key,
    required this.title,
    required this.rightTitle,
    required this.subtitle,
    required this.imagePath,
    required this.switchInitialValue,
    this.switchOnChanged,
    this.subtitleStyle,
  });

  final String title;
  final String rightTitle;
  final String subtitle;
  final TextStyle? subtitleStyle;
  final String imagePath;
  final bool switchInitialValue;
  final void Function(bool)? switchOnChanged;

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
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            rightTitle,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.grayscaleBody,
              fontSize: 12.0,
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            height: 1.0,
            child: Switch(
              value: switchInitialValue,
              onChanged: switchOnChanged,
              activeColor: Colors.white,
              activeTrackColor: AppColors.stateErrorBase,
              inactiveThumbColor: Colors.white.withOpacity(0.5),
              inactiveTrackColor: AppColors.stateSuccessBase,
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
          ),
        ],
      ),
      dense: true,
    );
  }
}
