import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/activity_recap_entities.dart';
import 'package:fleetime_hris/ui/pages/overtime_recap/components/overtime_recap_ui_card.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class ActivityRecapPage extends StatefulWidget {
  const ActivityRecapPage({super.key});

  @override
  State<ActivityRecapPage> createState() => _ActivityRecapPageState();
}

class _ActivityRecapPageState extends State<ActivityRecapPage>
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
        title: StringConstant.activityRecapTitle,
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
                  StringConstant.activityRecapMyActivity,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  StringConstant.activityRecapMyEmployeeActivity,
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
                const ActivityRecapMyActivity(),
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

class ActivityRecapMyActivity extends StatelessWidget {
  const ActivityRecapMyActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              itemCount: activityRecapList.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemBuilder: (context, index) {
                return OvertimeRecapCard(
                  index: index,
                  date: activityRecapList[index].date,
                  status: activityRecapList[index].status,
                  overtimeTitle: activityRecapList[index].reason,
                  time: activityRecapList[index].time,
                  startFrom: activityRecapList[index].startFrom,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
