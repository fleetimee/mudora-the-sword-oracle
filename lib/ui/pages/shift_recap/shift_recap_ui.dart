import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/shift_recap_entities.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class ShiftRecapPage extends StatefulWidget {
  const ShiftRecapPage({super.key});

  @override
  State<ShiftRecapPage> createState() => _ShiftRecapPageState();
}

class _ShiftRecapPageState extends State<ShiftRecapPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBack(
        title: StringConstant.shiftRecapTitle,
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
      body: Column(
        children: [
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: false,
            unselectedLabelColor: AppColors.grayscalePlaceholder,
            indicatorColor: AppColors.primaryBlue,
            labelColor: AppColors.primaryBlue,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text(
                  StringConstant.shiftRecapMyShift,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  StringConstant.shiftRecapEmployeeShift,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView.separated(
                    itemCount: shiftRecapEntitiesList.length,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        shiftRecapEntitiesList[index].date,
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
                                        shiftRecapEntitiesList[index].status ==
                                                'Diterima'
                                            ? Colors.green.withOpacity(0.2)
                                            : Colors.red.withOpacity(0.2),
                                    label: Text(
                                      shiftRecapEntitiesList[index].status,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: shiftRecapEntitiesList[index]
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
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/fing.png',
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
