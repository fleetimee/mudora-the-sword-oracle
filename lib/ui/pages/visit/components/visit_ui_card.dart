import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/data/entities/visit_card_entities.dart';
import 'package:flutter/material.dart';

class VisitCard extends StatelessWidget {
  const VisitCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visit_calendar.png',
                                  height: 20,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  visitEntitites[index].date,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: AppColors.grayscaleBody,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Detail',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primaryBlue,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.primaryBlue,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          visitEntitites[index].title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grayscaleTitle,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          visitEntitites[index].address,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.grayscaleBody,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
