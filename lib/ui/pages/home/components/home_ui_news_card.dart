import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({
    super.key,
    required this.authorImagePath,
    required this.authorName,
    required this.newsTitle,
    required this.newsDate,
    required this.newsReadTime,
    required this.newsImagePath,
  });

  final String authorImagePath;
  final String authorName;
  final String newsTitle;
  final String newsDate;
  final String newsReadTime;
  final String newsImagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(
                      authorImagePath,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    authorName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayscaleBody,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                newsTitle,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grayscaleTitle,
                  height: 1.8,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '$newsDate . $newsReadTime',
                style: const TextStyle(
                  color: AppColors.grayscaleBody,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(newsImagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
