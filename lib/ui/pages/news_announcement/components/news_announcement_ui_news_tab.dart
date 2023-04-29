import 'package:fleetime_hris/data/entities/home_news_entities.dart';
import 'package:fleetime_hris/ui/pages/home/components/home_ui_news_card.dart';
import 'package:flutter/material.dart';

class NewsAnnouncementNewsTab extends StatelessWidget {
  const NewsAnnouncementNewsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
    );
  }
}
