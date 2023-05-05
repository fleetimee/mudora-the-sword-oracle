import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/data/entities/presence_card_entieties.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_router.dart';
import 'package:flutter/material.dart';

class PresencePage extends StatelessWidget {
  const PresencePage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 3;

    return Scaffold(
      appBar: AppBarDefault(
        title: StringConstant.presenceDataTitle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.separated(
                itemCount: presenceCardEntities.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 2.0,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Colors.grey,
                        width: 0.2,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: AppColors.grayscaleBackground,
                        child: Image.asset(
                          'assets/images/profile_edit.png',
                          fit: BoxFit.contain,
                          height: 24.0,
                        ),
                      ),
                      title: Text(
                        presenceCardEntities[index].cardTitle,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: AppColors.grayscaleTitle,
                        ),
                      ),
                      subtitle: Text(
                        presenceCardEntities[index].cardSubtitle,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: AppColors.grayscaleLabel,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 18.0,
                        color: AppColors.grayscaleBody,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FleetimeBottomNavBar(
        index: selectedIndex,
      ),
    );
  }
}
