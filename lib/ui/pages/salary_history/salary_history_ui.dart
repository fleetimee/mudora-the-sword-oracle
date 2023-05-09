import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/data/entities/salary_history_entities.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class SalaryHistoryPage extends StatelessWidget {
  const SalaryHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBack(
        title: 'Salary History',
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.grayscaleBackground,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total Pendapatan',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grayscaleLabel),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Text(
                      'Rp 111.000.000',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: AppColors.stateSuccessBase),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Penarikan',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grayscaleLabel),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Text(
                      'Rp 11.000.000',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: AppColors.stateErrorBase),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Maret 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.grayscaleLabel,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Scrollbar(
                        child: ListView.separated(
                          itemCount: salaryHistoryEntitiesList.length,
                          separatorBuilder: (context, index) => const Divider(
                            height: 20,
                            color: AppColors.grayscaleStrokeLine,
                          ),
                          itemBuilder: (context, index) {
                            return ListTile(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/salary_history_detail');
                              },
                              leading: CircleAvatar(
                                radius: 22,
                                backgroundColor: AppColors.grayscaleStrokeLine,
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Image.asset(
                                    'assets/images/salary_history_icon.png',
                                    height: 25,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    salaryHistoryEntitiesList[index].name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.grayscaleTitle,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    salaryHistoryEntitiesList[index].time,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.grayscaleLabel,
                                    ),
                                  ),
                                ],
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    salaryHistoryEntitiesList[index].value,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.grayscaleTitle,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    child: Chip(
                                      backgroundColor:
                                          salaryHistoryEntitiesList[index]
                                                      .status ==
                                                  'Terkirim'
                                              ? Colors.green.withOpacity(0.2)
                                              : Colors.yellow.withOpacity(0.2),
                                      label: Text(
                                        salaryHistoryEntitiesList[index].status,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              salaryHistoryEntitiesList[index]
                                                          .status ==
                                                      'Terkirim'
                                                  ? AppColors.stateSuccessBase
                                                  : Colors.yellow,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
