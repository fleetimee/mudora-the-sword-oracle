import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/profile_entities.dart';
import 'package:fleetime_hris/ui/pages/profile/components/profile_ui_listtile.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_router.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/profile';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 4;

    return Scaffold(
      appBar: AppBarDefault(
        title: StringConstant.profileTitle,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                "assets/images/profile_avatar.jpg",
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              StringConstant.profileName,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: AppColors.grayscaleTitle,
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/profile_department.png",
                        fit: BoxFit.contain,
                        height: 24.0,
                      ),
                      const SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            StringConstant.profileDepartmentTitle,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              letterSpacing: 0.5,
                              color: AppColors.grayscalePlaceholder,
                            ),
                          ),
                          Text(
                            StringConstant.profileDepartmentDescription,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              letterSpacing: 0.5,
                              color: AppColors.grayscaleTitle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/profile_jabatan.png",
                        fit: BoxFit.contain,
                        height: 24.0,
                      ),
                      const SizedBox(width: 8.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            StringConstant.profilePositionTitle,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              letterSpacing: 0.5,
                              color: AppColors.grayscalePlaceholder,
                            ),
                          ),
                          Text(
                            StringConstant.profilePositionDescription,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              letterSpacing: 0.5,
                              color: AppColors.grayscaleTitle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 32.0),
            SizedBox(
              /// Get remaining height of the screen
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listViewProfile.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 8.0);
                },
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ProfileListTile(
                    imagePath: listViewProfile[index].imagePath,
                    title: listViewProfile[index].name,
                    onTap: listViewProfile[index].onPressed,
                    icon: listViewProfile[index].isLogout == true
                        ? const Icon(
                            Icons.logout,
                            color: AppColors.grayscaleBackground,
                          )
                        : const Icon(
                            Icons.arrow_forward_ios,
                            size: 16.0,
                            color: AppColors.grayscaleBody,
                          ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FleetimeBottomNavBar(
        index: selectedIndex,
      ),
    );
  }
}
