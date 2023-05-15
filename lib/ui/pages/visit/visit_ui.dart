import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/data/entities/visit_card_entities.dart';
import 'package:fleetime_hris/ui/pages/visit/components/visit_ui_card.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_router.dart';
import 'package:flutter/material.dart';

class VisitPage extends StatefulWidget {
  static const String routeName = '/visit';

  const VisitPage({super.key});

  @override
  State<VisitPage> createState() => _VisitPageState();
}

class _VisitPageState extends State<VisitPage>
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
    int selectedIndex = 1;

    return Scaffold(
      appBar: AppBarDefault(
        title: 'Visit',
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add_visit');
            },
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
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            indicatorColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: AppColors.primaryBlue,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            unselectedLabelColor: AppColors.grayscaleBody,
            dividerColor: Colors.white,
            tabs: const [
              Tab(
                child: Text(
                  'Client Baru',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Client Lama',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                ListView.separated(
                  itemCount: visitEntitites.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  itemBuilder: (context, index) {
                    return VisitCard(
                      index: index,
                    );
                  },
                ),
                const Center(
                  child: Text('Client Lama'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: FleetimeBottomNavBar(
        index: selectedIndex,
      ),
    );
  }
}
