import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/data/entities/home_card_entities.dart';
import 'package:flutter/material.dart';

class HomeStatCard extends StatelessWidget {
  const HomeStatCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.stateSuccess,
                    radius: 12,
                    child: Image.asset(
                      listAllHomeCard[index].imagePath,
                      height: 15,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    listAllHomeCard[index].cardTitle,
                    style: const TextStyle(
                      color: AppColors.grayscaleLabel,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                listAllHomeCard[index].cardTime,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.grayscaleTitle,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    listAllHomeCard[index].cardDescription,
                    style: const TextStyle(
                      color: AppColors.grayscaleLabel,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    listAllHomeCard[index].cardPoint,
                    style: TextStyle(
                      color: listAllHomeCard[index].isMinus == true
                          ? AppColors.stateErrorBase
                          : AppColors.stateSuccessBase,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
