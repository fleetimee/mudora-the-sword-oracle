import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
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
              const SizedBox(
                height: 25.0,
              ),
              ConfigurableExpansionTile(
                header: Container(
                  height: 200,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'Ringkasan',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.grayscaleTitle,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            DropdownMenu(
                              width: 120.0,
                              inputDecorationTheme: InputDecorationTheme(
                                border: InputBorder.none,
                                filled: false,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              initialSelection: 'April 2023',
                              dropdownMenuEntries: const [
                                DropdownMenuEntry(
                                  value: 'April 2023',
                                  label: 'April 2023',
                                ),
                                DropdownMenuEntry(
                                  value: 'April 2022',
                                  label: 'April 2022',
                                ),
                                DropdownMenuEntry(
                                  value: 'April 2021',
                                  label: 'April 2021',
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PresenceStatus(
                              days: '12',
                              status: 'Hadir',
                              percentage: '100%',
                              progress: 1.0,
                              statusColor: Colors.green,
                            ),
                            PresenceStatus(
                              days: '12',
                              status: 'Izin',
                              percentage: '70%',
                              progress: 0.7,
                              statusColor: Colors.yellow,
                            ),
                            PresenceStatus(
                              days: '0',
                              status: 'Sakit',
                              percentage: '1%',
                              progress: 1.0,
                              statusColor: Colors.red,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                          height: 0.0,
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Lainnya'),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18.0,
                              color: AppColors.grayscaleBody,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                headerExpanded: Container(
                  height: 470,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'Ringkasan',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.grayscaleTitle,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            DropdownMenu(
                              width: 120.0,
                              inputDecorationTheme: InputDecorationTheme(
                                border: InputBorder.none,
                                filled: false,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              initialSelection: 'April 2023',
                              dropdownMenuEntries: const [
                                DropdownMenuEntry(
                                  value: 'April 2023',
                                  label: 'April 2023',
                                ),
                                DropdownMenuEntry(
                                  value: 'April 2022',
                                  label: 'April 2022',
                                ),
                                DropdownMenuEntry(
                                  value: 'April 2021',
                                  label: 'April 2021',
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PresenceStatus(
                              days: '12',
                              status: 'Hadir',
                              percentage: '100%',
                              progress: 1.0,
                              statusColor: Colors.green,
                            ),
                            PresenceStatus(
                              days: '12',
                              status: 'Sakit',
                              percentage: '70%',
                              progress: 0.7,
                              statusColor: Colors.yellow,
                            ),
                            PresenceStatus(
                              days: '0',
                              status: 'Alpha',
                              percentage: '1%',
                              progress: 1.0,
                              statusColor: Colors.red,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PresenceStatus(
                              days: '12',
                              width: 120,
                              status: 'Izin',
                              percentage: '100%',
                              progress: 1.0,
                              statusColor: Colors.green,
                            ),
                            VerticalDivider(
                              color: Colors.red,
                              thickness: 0.5,
                              width: 1.0,
                            ),
                            PresenceStatus(
                              days: '12',
                              width: 120,
                              status: 'Cuti',
                              percentage: '100%',
                              progress: 1.0,
                              statusColor: Colors.green,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PresenceStatus(
                              days: '12',
                              width: 120,
                              status: 'Lembur',
                              percentage: '100%',
                              progress: 1.0,
                              statusColor: Colors.green,
                            ),
                            VerticalDivider(
                              color: Colors.red,
                              thickness: 0.5,
                              width: 1.0,
                            ),
                            PresenceStatus(
                              days: '12',
                              width: 120,
                              status: 'Terlambat',
                              percentage: '100%',
                              progress: 1.0,
                              statusColor: Colors.green,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PresenceStatus(
                              days: '12',
                              width: 120,
                              status: 'Pulang Cepat',
                              percentage: '100%',
                              progress: 1.0,
                              statusColor: Colors.green,
                            ),
                            VerticalDivider(
                              color: Colors.red,
                              thickness: 0.5,
                              width: 1.0,
                            ),
                            PresenceStatus(
                              days: '12',
                              width: 120,
                              status: 'Tidak Absen',
                              percentage: '100%',
                              progress: 1.0,
                              statusColor: Colors.green,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                          height: 1.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Ciutkan',
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_up,
                                color: AppColors.grayscaleTitle,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
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
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          presenceCardEntities[index].routeName,
                        );
                      },
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

class PresenceStatus extends StatelessWidget {
  const PresenceStatus({
    super.key,
    required this.status,
    required this.statusColor,
    required this.progress,
    required this.days,
    required this.percentage,
    this.width,
  });

  final String status;
  final Color statusColor;
  final double progress;
  final String days;
  final String percentage;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 80,
      height: 60.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            status,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: AppColors.grayscaleTitle,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$days hari'),
              Text(percentage),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppColors.grayscaleBackground,
            valueColor: AlwaysStoppedAnimation<Color>(
              statusColor,
            ),
          ),
        ],
      ),
    );
  }
}
