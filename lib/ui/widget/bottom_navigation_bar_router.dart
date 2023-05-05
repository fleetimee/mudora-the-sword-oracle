import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';

class FleetimeBottomNavBar extends StatelessWidget {
  const FleetimeBottomNavBar({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryBlue,
      ),
      elevation: 2,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.of(context).pushNamed('/home_page');
            break;
          case 1:
            Navigator.of(context).pushNamed('/visit_page');
            break;
          case 2:
            Navigator.of(context).pushNamed('/absent_map');
            break;
          case 3:
            Navigator.of(context).pushNamed('/presence_page');
            break;
          default:
            Navigator.of(context).pushNamed('/profile_page');
        }
      },
      enableFeedback: true,
      items: [
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                'assets/images/bottombar_home.png',
                width: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
          label: 'Beranda',
          tooltip: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                'assets/images/bottombar_visit.png',
                width: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
          label: 'Visit',
          tooltip: 'Visit',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                'assets/images/bottombar_home.png',
                width: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
          label: 'Presensi',
          tooltip: 'Presensi',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                'assets/images/bottombar_data_absen.png',
                width: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
          label: 'Data Absen',
          tooltip: 'Data Absen',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                'assets/images/bottombar_profile.png',
                width: 24,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
          label: 'Profil Saya',
          tooltip: 'Profil Saya',
        ),
      ],
    );
  }
}
