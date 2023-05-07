import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/pages/news_announcement/components/news_announcement_ui_announcement_tab.dart';
import 'package:fleetime_hris/ui/pages/news_announcement/components/news_announcement_ui_news_tab.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class NewsAnnouncementPage extends StatefulWidget {
  static const routeName = '/news_announcement_page';

  const NewsAnnouncementPage({super.key});

  @override
  State<NewsAnnouncementPage> createState() => _NewsAnnouncementPageState();
}

class _NewsAnnouncementPageState extends State<NewsAnnouncementPage>
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
        title: StringConstant.newsAnnouncementTitle,
      ),
      body: Column(
        children: [
          TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: false,
            unselectedLabelColor: AppColors.grayscalePlaceholder,
            labelColor: AppColors.primaryBlue,
            indicatorColor: AppColors.primaryBlue,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text(
                  StringConstant.newsAnnouncemenetTitleTab1,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  StringConstant.newsAnnouncementTitleTab2,
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
              children: const [
                NewsAnnouncementNewsTab(),
                NewsAnnouncementAnnouncementTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
