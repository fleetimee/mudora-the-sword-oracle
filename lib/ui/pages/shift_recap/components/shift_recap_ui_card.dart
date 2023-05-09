import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/data/entities/shift_recap_entities.dart';
import 'package:flutter/material.dart';

class ShiftRecapCard extends StatelessWidget {
  const ShiftRecapCard({
    super.key,
    required this.index,
    required this.date,
    required this.status,
    required this.time,
  });

  final int index;
  final String date;
  final String status;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: AppColors.grayscalePlaceholder,
          width: 0.8,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                      height: 25,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.grayscaleBody,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Chip(
                  backgroundColor: status == 'Diterima'
                      ? Colors.green.withOpacity(0.2)
                      : Colors.red.withOpacity(0.2),
                  label: Text(
                    status,
                    style: TextStyle(
                      fontSize: 14,
                      color: shiftRecapEntitiesList[index].status == 'Diterima'
                          ? AppColors.stateSuccessBase
                          : AppColors.stateErrorBase,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Shift',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grayscaleBody,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.grayscaleTitle,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
