import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/reimbursement_recap_entities.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class ReimbursementRecapPage extends StatelessWidget {
  const ReimbursementRecapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBack(
        title: StringConstant.reimbursementRecapTitle,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: AppColors.primaryBlue,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemCount: reimbursementRecapEntitiesList.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          shrinkWrap: true,
          itemBuilder: (context, index) {
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
                              reimbursementRecapEntitiesList[index].date,
                              style: const TextStyle(
                                fontSize: 16,
                                color: AppColors.grayscaleBody,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Chip(
                          backgroundColor:
                              reimbursementRecapEntitiesList[index].status ==
                                      'Diterima'
                                  ? Colors.green.withOpacity(0.2)
                                  : Colors.red.withOpacity(0.2),
                          label: Text(
                            reimbursementRecapEntitiesList[index].status,
                            style: TextStyle(
                              fontSize: 14,
                              color: reimbursementRecapEntitiesList[index]
                                          .status ==
                                      'Diterima'
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
                        Text(
                          reimbursementRecapEntitiesList[index].description,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.grayscaleBody,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          reimbursementRecapEntitiesList[index].value,
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
          },
        ),
      ),
    );
  }
}
