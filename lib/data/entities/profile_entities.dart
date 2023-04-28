import 'package:fleetime_hris/common/constant/string_constant.dart';

class ProfileEntites {
  final String name;
  final String imagePath;
  final void Function()? onPressed;
  final bool? isLogout;

  const ProfileEntites({
    required this.name,
    required this.imagePath,
    this.onPressed,
    this.isLogout,
  });
}

final List<ProfileEntites> listViewProfile = [
  ProfileEntites(
    name: StringConstant.listViewChangeProfile,
    imagePath: 'assets/images/profile_edit.png',
    onPressed: () {},
  ),
  ProfileEntites(
    name: StringConstant.listViewChangePassword,
    imagePath: 'assets/images/profile_lock.png',
    onPressed: () {},
  ),
  ProfileEntites(
    name: StringConstant.listViewChangeAddress,
    imagePath: 'assets/images/profile_location.png',
    onPressed: () {},
  ),
  ProfileEntites(
    name: StringConstant.listViewSetting,
    imagePath: 'assets/images/profile_setting.png',
    onPressed: () {},
  ),
  ProfileEntites(
    name: StringConstant.listViewLogout,
    imagePath: 'assets/images/profile_logout.png',
    onPressed: () {},
    isLogout: true,
  )
];
