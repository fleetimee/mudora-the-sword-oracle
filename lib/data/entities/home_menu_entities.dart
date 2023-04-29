import 'package:fleetime_hris/common/constant/string_constant.dart';

class HomeMenuEntities {
  final String menuName;
  final String imagePath;
  final void Function()? onPressed;

  const HomeMenuEntities({
    required this.menuName,
    required this.imagePath,
    this.onPressed,
  });
}

final List<HomeMenuEntities> listViewMenu = [
  HomeMenuEntities(
    menuName: StringConstant.menuIzin,
    imagePath: 'assets/images/home_ijin.png',
    onPressed: () {},
  ),
  HomeMenuEntities(
    menuName: StringConstant.menuLembur,
    imagePath: 'assets/images/home_lembur.png',
    onPressed: () {},
  ),
  HomeMenuEntities(
    menuName: StringConstant.menuShift,
    imagePath: 'assets/images/home_shift.png',
    onPressed: () {},
  ),
  HomeMenuEntities(
    menuName: StringConstant.menuGaji,
    imagePath: 'assets/images/home_gaji.png',
    onPressed: () {},
  ),
  HomeMenuEntities(
    menuName: StringConstant.menuAktivitas,
    imagePath: 'assets/images/home_aktivitas.png',
    onPressed: () {},
  ),
  HomeMenuEntities(
    menuName: StringConstant.menuReimburse,
    imagePath: 'assets/images/home_reimbursement.png',
    onPressed: () {},
  )
];
