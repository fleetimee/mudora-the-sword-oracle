import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/home_card_entities.dart';
import 'package:fleetime_hris/data/entities/home_menu_entities.dart';
import 'package:fleetime_hris/data/entities/home_news_entities.dart';
import 'package:fleetime_hris/ui/pages/home/components/home_ui_greeting_card.dart';
import 'package:fleetime_hris/ui/pages/home/components/home_ui_menu_card.dart';
import 'package:fleetime_hris/ui/pages/home/components/home_ui_morning_shift.dart';
import 'package:fleetime_hris/ui/pages/home/components/home_ui_news_card.dart';
import 'package:fleetime_hris/ui/pages/home/components/home_ui_stat_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFFF9FBFD),
          body: Center(
            child: Scrollbar(
              child: SingleChildScrollView(
                // normal scroll physics
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const HomeGreetingCard(),
                      const SizedBox(
                        height: 20,
                      ),
                      const HomeShiftCard(
                        shiftName: StringConstant.morningShift,
                        shiftTime: StringConstant.morningTime,
                        shiftImage: 'assets/images/home_day.png',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.40,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.2,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: listAllHomeCard.length,
                          itemBuilder: (context, index) {
                            return HomeStatCard(
                              index: index,
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 250,
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 0.6,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 24,
                          ),
                          itemCount: listViewMenu.length,
                          itemBuilder: (context, index) {
                            return HomeMenuCard(
                              index: index,
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              StringConstant.newsTitle,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: AppColors.grayscaleTitle,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  '/news_announcement',
                                );
                              },
                              child: const Text(
                                StringConstant.moreNews,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryBlue,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColors.primaryBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 40,
                            );
                          },
                          itemCount: newsList.length,
                          itemBuilder: (context, index) {
                            return HomeNewsCard(
                              newsTitle: newsList[index].newsTitle,
                              newsDate: newsList[index].newsDate,
                              authorImagePath: newsList[index].newsAuthorImage,
                              authorName: newsList[index].newsAuthor,
                              newsImagePath: newsList[index].newsImage,
                              newsReadTime: newsList[index].newsReadTime,
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bottombar_home.png',
                  width: 24,
                  fit: BoxFit.contain,
                ),
                label: 'Beranda',
                tooltip: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bottombar_home.png',
                  width: 24,
                  fit: BoxFit.contain,
                ),
                label: 'Beranda',
                tooltip: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bottombar_home.png',
                  width: 24,
                  fit: BoxFit.contain,
                ),
                label: 'Beranda',
                tooltip: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bottombar_home.png',
                  width: 24,
                  fit: BoxFit.contain,
                ),
                label: 'Beranda',
                tooltip: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bottombar_home.png',
                  width: 24,
                  fit: BoxFit.contain,
                ),
                label: 'Beranda',
                tooltip: 'Beranda',
              ),
            ],
          )),
    );
  }
}
