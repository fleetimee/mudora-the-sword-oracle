import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/overtime_recap_card_entities.dart';
import 'package:fleetime_hris/ui/pages/overtime_recap/components/overtime_recap_ui_card.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class OvertimeRecapPage extends StatefulWidget {
  const OvertimeRecapPage({super.key});

  @override
  State<OvertimeRecapPage> createState() => _OvertimeRecapPageState();
}

class _OvertimeRecapPageState extends State<OvertimeRecapPage>
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
      appBar: AppBarWithCross(
        title: StringConstant.overtimeRecapTitle,
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
                  StringConstant.overtimeRecapMyOverTime,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  StringConstant.overtimeRecapEmployeeOverTime,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        StringConstant.overtimeRecapMonth,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView.separated(
                          itemCount: overtimeRecapList.length,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ),
                          itemBuilder: (context, index) {
                            return OvertimeRecapCard(
                              index: index,
                              date: overtimeRecapList[index].date,
                              status: overtimeRecapList[index].status,
                              overtimeTitle: overtimeRecapList[index].reason,
                              time: overtimeRecapList[index].time,
                              startFrom: overtimeRecapList[index].startFrom,
                            );
                          },
                        ),
                      ),
                    ],
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
