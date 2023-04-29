import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';

class HomeShiftCard extends StatelessWidget {
  const HomeShiftCard({
    super.key,
    required this.shiftName,
    required this.shiftTime,
    required this.shiftImage,
  });

  final String shiftName;
  final String shiftTime;
  final String shiftImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      elevation: 1,
      child: Container(
        height: 95,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    shiftName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grayscaleLabel,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/home_timer.png',
                        height: 20,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        shiftTime,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.grayscaleTitle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                shiftImage,
                height: 80,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
