import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:flutter/material.dart';

class HomeGreetingCard extends StatelessWidget {
  const HomeGreetingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringConstant.greeting,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: AppColors.grayscaleTitle,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            StringConstant.date,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: AppColors.grayscaleBody,
            ),
          ),
        ],
      ),
    );
  }
}
