import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/permission_recap_entities.dart';
import 'package:fleetime_hris/ui/pages/overtime_recap/components/overtime_recap_ui_card.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class PermissionRecapPage extends StatefulWidget {
  const PermissionRecapPage({super.key});

  @override
  State<PermissionRecapPage> createState() => _PermissionRecapPageState();
}

class _PermissionRecapPageState extends State<PermissionRecapPage>
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
        title: StringConstant.permissionRecapTitle,
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
                  StringConstant.permissionRecapMyPermission,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  StringConstant.permissionRecapMyEmployeePermission,
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
                const PermissionRecapMyPermission(),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/fing.png',
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Tidak ada Data Izin',
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.grayscaleTitle,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Text(
                          'Silahkan tambahkan data izin terlebih dahulu',
                          style: TextStyle(
                            fontSize: 18,
                            color: AppColors.grayscaleLabel,
                            height: 1.8,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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

class PermissionRecapMyPermission extends StatelessWidget {
  const PermissionRecapMyPermission({
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
              itemCount: permissionRecapList.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemBuilder: (context, index) {
                return OvertimeRecapCard(
                  index: index,
                  date: permissionRecapList[index].date,
                  status: permissionRecapList[index].status,
                  overtimeTitle: permissionRecapList[index].reason,
                  time: permissionRecapList[index].time,
                  startFrom: permissionRecapList[index].startFrom,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
