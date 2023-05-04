import 'package:fleetime_hris/common/constant/string_constant.dart';

class HomeMenuEntities {
  final String menuName;
  final String imagePath;
  final String routeName;

  const HomeMenuEntities({
    required this.menuName,
    required this.imagePath,
    required this.routeName,
  });
}

final List<HomeMenuEntities> listViewMenu = [
  const HomeMenuEntities(
    menuName: StringConstant.menuIzin,
    imagePath: 'assets/images/home_ijin.png',
    routeName: '/add_permission',
  ),
  const HomeMenuEntities(
    menuName: StringConstant.menuLembur,
    imagePath: 'assets/images/home_lembur.png',
    routeName: '/add_overtime',
  ),
  const HomeMenuEntities(
    menuName: StringConstant.menuShift,
    imagePath: 'assets/images/home_shift.png',
    routeName: '/add_shift',
  ),
  const HomeMenuEntities(
    menuName: StringConstant.menuGaji,
    imagePath: 'assets/images/home_gaji.png',
    routeName: '',
  ),
  const HomeMenuEntities(
    menuName: StringConstant.menuAktivitas,
    imagePath: 'assets/images/home_aktivitas.png',
    routeName: '/add_activity',
  ),
  const HomeMenuEntities(
    menuName: StringConstant.menuReimburse,
    imagePath: 'assets/images/home_reimbursement.png',
    routeName: '/add_reimbursement',
  )
];
