import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/presence_history_card_entities.dart';
import 'package:flutter/material.dart';

class PresenceHistoryCard extends StatelessWidget {
  const PresenceHistoryCard({
    super.key,
    required this.index,
    required this.cardDate,
    required this.cardName,
    required this.inTime,
    required this.outTime,
  });

  final int index;
  final String cardDate;
  final String cardName;
  final String inTime;
  final String outTime;

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
                  cardDate,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.grayscaleBody,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              cardName,
              style: const TextStyle(
                fontSize: 18,
                color: AppColors.grayscaleTitle,
                fontWeight: FontWeight.w600,
              ),
            ),
            Chip(
              backgroundColor: AppColors.grayscaleStrokeLine,
              label: Text(
                presenceHistoryCardEntititiesList[index]
                    .cardCompanyName
                    .toUpperCase(),
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.grayscaleBody,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const Divider(
              color: AppColors.grayscaleStrokeLine,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  StringConstant.presenceHistoryIn,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grayscaleBody,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  inTime,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.stateSuccessBase,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  StringConstant.presenceHistoryDescription,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grayscaleBody,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '-',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grayscaleBody,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  StringConstant.presenceHistoryOut,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grayscaleBody,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  outTime,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.stateErrorBase,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  StringConstant.presenceHistoryDescription,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grayscaleBody,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '-',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grayscaleBody,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
