import 'package:fleetime_hris/common/constant/string_constant.dart';

class HomeNewsEntities {
  final String newsTitle;
  final String newsImage;
  final String newsAuthor;
  final String newsAuthorImage;
  final String newsDate;
  final String newsReadTime;

  const HomeNewsEntities({
    required this.newsTitle,
    required this.newsImage,
    required this.newsAuthor,
    required this.newsAuthorImage,
    required this.newsDate,
    required this.newsReadTime,
  });
}

final List<HomeNewsEntities> newsList = [
  const HomeNewsEntities(
    newsTitle: 'Cara mencapai keberhasilan ketika melamar pekerjaan',
    newsImage: 'assets/images/home_news_one.jpg',
    newsAuthor: StringConstant.newsAuthor,
    newsAuthorImage: 'assets/images/home_news_author.png',
    newsDate: '4 Jam lalu',
    newsReadTime: '5 mnt membaca',
  ),
  const HomeNewsEntities(
    newsTitle: 'Bekerja keras dalam bekerja untuk Kehidupan yang sejahtera',
    newsImage: 'assets/images/home_news_two.jpg',
    newsAuthor: StringConstant.newsAuthor,
    newsAuthorImage: 'assets/images/home_news_author.png',
    newsDate: '26 Maret 2023',
    newsReadTime: '16 mnt membaca',
  ),
  const HomeNewsEntities(
    newsTitle: 'Mempercepat kinerja dengan Kolaborasi',
    newsImage: 'assets/images/home_news_three.jpg',
    newsAuthor: StringConstant.newsAuthor,
    newsAuthorImage: 'assets/images/home_news_author.png',
    newsDate: '26 Maret 2023',
    newsReadTime: '16 mnt membaca',
  ),
];
