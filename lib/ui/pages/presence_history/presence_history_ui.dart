import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/pages/presence_history/components/presence_history_ui_my_absence.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class PresenceHistoryPage extends StatefulWidget {
  const PresenceHistoryPage({super.key});

  @override
  State<PresenceHistoryPage> createState() => _PresenceHistoryPageState();
}

class _PresenceHistoryPageState extends State<PresenceHistoryPage>
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
        title: StringConstant.presenceHistoryTitle,
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
                  StringConstant.presenceHistoryMyPresence,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  StringConstant.presenceHistoryEmployeePresence,
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
                const PresenceCardMyAbsence(),
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
