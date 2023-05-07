import 'package:flutter/material.dart';

class NewsAnnouncementAnnouncementTab extends StatelessWidget {
  const NewsAnnouncementAnnouncementTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/news_annoncement_illustration.png',
        height: 200,
        fit: BoxFit.contain,
      ),
    );
  }
}
