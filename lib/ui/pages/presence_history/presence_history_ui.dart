import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/presence_history_card_entities.dart';
import 'package:fleetime_hris/ui/pages/presence/components/presence_ui_card.dart';
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

class PresenceCardMyAbsence extends StatelessWidget {
  const PresenceCardMyAbsence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
          itemCount: presenceHistoryCardEntititiesList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return PresenceHistoryCard(
              index: index,
              cardDate: presenceHistoryCardEntititiesList[index].cardDate,
              cardName: presenceHistoryCardEntititiesList[index].cardName,
              inTime: presenceHistoryCardEntititiesList[index].inTime,
              outTime: presenceHistoryCardEntititiesList[index].outTime,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 20,
            );
          }),
    );
  }
}
