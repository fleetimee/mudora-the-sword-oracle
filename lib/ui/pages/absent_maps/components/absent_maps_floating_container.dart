import 'dart:async';

import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/ui/pages/absent_maps/components/absent_maps_custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:slide_action/slide_action.dart';

// ignore: must_be_immutable
class AbsentMapFloatingContainer extends StatefulWidget {
  const AbsentMapFloatingContainer({
    super.key,
    required bool inPresence,
    required bool outPresence,
  });

  @override
  State<AbsentMapFloatingContainer> createState() =>
      _AbsentMapFloatingContainerState();
}

class _AbsentMapFloatingContainerState
    extends State<AbsentMapFloatingContainer> {
  bool _inPresence = false;

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
            Container(
              height: MediaQuery.of(context).size.height * 0.19,
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
                  const FleetimeCustomListTile(
                    title: 'Akurasi',
                    rightTitle: '',
                    subtitle: '20 Meter',
                    subtitleStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grayscaleTitle,
                      fontSize: 14.0,
                    ),
                    imagePath: 'assets/images/absent_maps_gps.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
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
                  FleetimeCustomListTile(
                    title: 'Kerja',
                    rightTitle: 'Absen Masuk',
                    subtitle: '08:00 - 17:00',
                    subtitleStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.grayscaleTitle,
                      fontSize: 14.0,
                    ),
                    imagePath: 'assets/images/profile_jabatan.png',
                    trailing: Visibility(
                      visible: !_inPresence,
                      replacement: AbsentMapsSlideAction(
                        title: 'Absen Keluar',
                        containerColor: AppColors.stateErrorBase,
                        loaderColor: AppColors.stateErrorBase,
                        thumbIconColor: AppColors.stateErrorBase,
                        action: () async {
                          await Future.delayed(
                            const Duration(seconds: 2),
                            () {
                              setState(() {
                                _inPresence = false;
                              });
                            },
                          );
                        },
                      ),
                      child: AbsentMapsSlideAction(
                        title: 'Absen Masuk',
                        containerColor: AppColors.stateSuccessBase,
                        loaderColor: AppColors.stateSuccessBase,
                        thumbIconColor: AppColors.stateSuccessBase,
                        action: () async {
                          await Future.delayed(
                            const Duration(seconds: 2),
                            () {
                              setState(() {
                                _inPresence = true;
                              });
                            },
                          );
                        },
                      ),
                    ),
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
                    imagePath: 'assets/images/absent_maps_timer.png',
                    trailing: AbsentMapsSlideAction(
                      title: 'Istirahat',
                      containerColor: AppColors.grayscaleBody,
                      loaderColor: AppColors.grayscaleBody,
                      thumbIconColor: AppColors.grayscaleBody,
                      action: () async {
                        await Future.delayed(
                          const Duration(seconds: 2),
                          () {
                            setState(() {
                              // _inPresence = false;
                            });
                          },
                        );
                      },
                    ),
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

class AbsentMapsSlideAction extends StatelessWidget {
  const AbsentMapsSlideAction({
    super.key,
    required this.title,
    required this.containerColor,
    required this.loaderColor,
    required this.thumbIconColor,
    this.action,
  });

  final String title;
  final Color containerColor;
  final Color loaderColor;
  final Color thumbIconColor;
  final FutureOr<void> Function()? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      width: MediaQuery.of(context).size.width * 0.40,
      height: MediaQuery.of(context).size.height * 0.045,
      child: SlideAction(
        actionSnapThreshold: 1,
        thumbWidth: 30,
        trackBuilder: (context, state) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: containerColor,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                state.isPerformingAction ? 'Loading' : title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          );
        },
        thumbBuilder: (context, state) {
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(4),
              height: double.infinity,
              width: 30,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: state.isPerformingAction
                  ? CircularProgressIndicator(
                      backgroundColor: loaderColor,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                  : Icon(
                      Icons.arrow_forward_ios,
                      color: thumbIconColor,
                      size: 16,
                    ),
            ),
          );
        },
        action: action,
      ),
    );
  }
}
