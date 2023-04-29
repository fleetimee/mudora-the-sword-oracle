import 'package:fleetime_hris/common/constant/string_constant.dart';

class HomeCardEntities {
  final String cardTitle;
  final String cardTime;
  final String cardDescription;
  final String cardPoint;
  final String imagePath;
  final bool? isMinus;

  const HomeCardEntities({
    required this.cardTitle,
    required this.cardTime,
    required this.cardDescription,
    required this.cardPoint,
    required this.imagePath,
    this.isMinus,
  });
}

final List<HomeCardEntities> listAllHomeCard = [
  const HomeCardEntities(
    cardTitle: StringConstant.cardDatangTitle,
    cardTime: StringConstant.cardDatangTime,
    cardDescription: StringConstant.cardDatangDescription,
    cardPoint: StringConstant.cardPoints,
    imagePath: 'assets/images/home_datang.png',
  ),
  const HomeCardEntities(
    cardTitle: StringConstant.cardIstirahatTitle,
    cardTime: StringConstant.cardIstirahatTime,
    cardDescription: StringConstant.cardIstirahatDescription,
    cardPoint: StringConstant.cardIstirahatPoints,
    imagePath: 'assets/images/home_istirahat.png',
    isMinus: true,
  ),
  const HomeCardEntities(
    cardTitle: StringConstant.cardPulangTitle,
    cardTime: StringConstant.cardPulangTime,
    cardDescription: StringConstant.cardPulangDescription,
    cardPoint: StringConstant.cardPulangPoints,
    imagePath: 'assets/images/home_pulang.png',
  ),
  const HomeCardEntities(
    cardTitle: StringConstant.cardVisitTitle,
    cardTime: StringConstant.cardVisitTime,
    cardDescription: StringConstant.cardVisitDescription,
    cardPoint: StringConstant.cardVisitPoints,
    imagePath: 'assets/images/home_visit.png',
  ),
];
