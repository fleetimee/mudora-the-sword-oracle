import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/data/entities/home_menu_entities.dart';
import 'package:flutter/material.dart';

class HomeMenuCard extends StatelessWidget {
  const HomeMenuCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            listViewMenu[index].routeName != ''
                ? Navigator.pushNamed(
                    context,
                    listViewMenu[index].routeName,
                  )
                : null;
          },
          highlightColor: Colors.red,
          child: CircleAvatar(
            radius: 35,
            backgroundColor: AppColors.primaryBlue50,
            child: Image.asset(
              listViewMenu[index].imagePath,
              height: 35,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Text(
            listViewMenu[index].menuName,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.grayscaleTitle,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
