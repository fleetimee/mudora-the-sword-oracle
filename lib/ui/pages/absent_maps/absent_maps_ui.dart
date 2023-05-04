import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class AbsentMapPage extends StatefulWidget {
  const AbsentMapPage({super.key});

  @override
  State<AbsentMapPage> createState() => _AbsentMapPageState();
}

class _AbsentMapPageState extends State<AbsentMapPage> {
  bool _inPresence = false;
  bool _outPresence = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Expanded(
                child: FlutterMap(
                  options: MapOptions(
                    center: LatLng(-6.4503364, 107.0048695),
                    zoom: 13,
                    maxZoom: 18,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://mt1.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
                      userAgentPackageName: 'com.example.app',
                    ),
                  ],
                ),
              ),
              // Make floating container for detail
            ],
          ),
          Positioned(
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
                          switchInitialValue: _inPresence,
                          switchOnChanged: (value) {
                            setState(() {
                              _inPresence = value;
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
                          switchInitialValue: _outPresence,
                          switchOnChanged: (value) {
                            setState(() {
                              _outPresence = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FleetimeCustomListTile extends StatelessWidget {
  const FleetimeCustomListTile({
    super.key,
    required this.title,
    required this.rightTitle,
    required this.subtitle,
    required this.imagePath,
    required this.switchInitialValue,
    this.switchOnChanged,
    this.subtitleStyle,
  });

  final String title;
  final String rightTitle;
  final String subtitle;
  final TextStyle? subtitleStyle;
  final String imagePath;
  final bool switchInitialValue;
  final void Function(bool)? switchOnChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        height: 25.0,
        fit: BoxFit.contain,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.grayscaleBody,
          fontSize: 14.0,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: subtitleStyle,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            rightTitle,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.grayscaleBody,
              fontSize: 12.0,
            ),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            height: 1.0,
            child: Switch(
              value: switchInitialValue,
              onChanged: switchOnChanged,
              activeColor: Colors.white,
              activeTrackColor: AppColors.stateErrorBase,
              inactiveThumbColor: Colors.white.withOpacity(0.5),
              inactiveTrackColor: AppColors.stateSuccessBase,
            ),
          ),
        ],
      ),
      dense: true,
    );
  }
}
