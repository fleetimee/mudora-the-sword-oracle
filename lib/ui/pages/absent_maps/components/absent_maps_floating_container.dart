import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/ui/pages/absent_maps/components/absent_maps_custom_list_tile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AbsentMapFloatingContainer extends StatefulWidget {
  AbsentMapFloatingContainer({
    super.key,
    required bool inPresence,
    required bool outPresence,
  })  : _inPresence = inPresence,
        _outPresence = outPresence;

  bool _inPresence;
  bool _outPresence;

  @override
  State<AbsentMapFloatingContainer> createState() =>
      _AbsentMapFloatingContainerState();
}

class _AbsentMapFloatingContainerState
    extends State<AbsentMapFloatingContainer> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.05,
      left: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * 0.05,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Make a container for icon that centering the maps and make it clickable
            GestureDetector(
              onTap: () {},
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8.0,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.my_location,
                    color: AppColors.primaryBlue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8.0,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Image.asset(
                      'assets/images/profile_location.png',
                      height: 25.0,
                      fit: BoxFit.contain,
                    ),
                    dense: true,
                    title: const Text(
                      'Big Talent Indonesia',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.grayscaleTitle,
                        fontSize: 16.0,
                      ),
                    ),
                    subtitle: const Text(
                      'Jln. Letnan Jenderal S. Parman No. 28, Kota Semarang',
                    ),
                  ),
                  const Divider(
                    height: 0.0,
                  ),
                  FleetimeCustomListTile(
                    title: 'Kerja',
                    rightTitle: 'Absen Masuk',
                    subtitle: '08:00 - 17:00 WIB',
                    subtitleStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grayscaleTitle,
                      fontSize: 14.0,
                    ),
                    imagePath: 'assets/images/profile_jabatan.png',
                    switchInitialValue: widget._inPresence,
                    switchOnChanged: (value) {
                      setState(() {
                        widget._inPresence = value;
                      });
                    },
                  ),
                  const Divider(
                    height: 0.0,
                  ),
                  FleetimeCustomListTile(
                    title: 'Istirahat',
                    rightTitle: '',
                    subtitle: '60 Menit',
                    subtitleStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.stateSuccessBase,
                      fontSize: 14.0,
                    ),
                    imagePath: 'assets/images/profile_jabatan.png',
                    switchInitialValue: widget._outPresence,
                    switchOnChanged: (value) {
                      setState(() {
                        widget._outPresence = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
