import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/data/entities/presence_recap_entities.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PresenceRecapPage extends StatefulWidget {
  const PresenceRecapPage({super.key});

  @override
  State<PresenceRecapPage> createState() => _PresenceRecapPageState();
}

class _PresenceRecapPageState extends State<PresenceRecapPage> {
  late List<_ChartData> data;

  @override
  void initState() {
    data = [
      _ChartData('David', 20, AppColors.stateErrorBase),
      _ChartData('Steve', 80, AppColors.stateSuccessBase),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBack(
        title: 'Rekap Absensi',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              children: [
                SfCircularChart(
                  series: <CircularSeries>[
                    DoughnutSeries<_ChartData, String>(
                      innerRadius: '70%',
                      dataSource: data,
                      radius: '80%',
                      xValueMapper: (_ChartData data, _) => data.x,
                      yValueMapper: (_ChartData data, _) => data.y,
                      pointColorMapper: (_ChartData data, _) =>
                          data.pointColorMapper,
                    )
                  ],
                ),
                const Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Total Absensi',
                        style: TextStyle(
                          color: AppColors.grayscaleLabel,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '95%',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Aktivitas',
                        style: TextStyle(
                          color: AppColors.grayscaleTitle,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      DropdownButton<String>(
                        value: '2023',
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(
                          color: AppColors.grayscaleLabel,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        underline: Container(
                          height: 2,
                          color: AppColors.grayscaleTitle,
                        ),
                        onChanged: (String? newValue) {},
                        items: <String>['2023', '2022', '2021']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: presenceRecapEntitiesList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: presenceRecapEntitiesList[index].status ==
                                  'Hadir'
                              ? CircleAvatar(
                                  backgroundColor:
                                      Colors.green.withOpacity(0.15),
                                  child: Image.asset(
                                    'assets/images/home_datang.png',
                                    fit: BoxFit.contain,
                                    height: 24,
                                  ),
                                )
                              : CircleAvatar(
                                  backgroundColor: Colors.red.withOpacity(0.15),
                                  child: Image.asset(
                                    'assets/images/home_pulangg.png',
                                    fit: BoxFit.contain,
                                    height: 24,
                                  ),
                                ),
                          title: Text(
                            presenceRecapEntitiesList[index].date,
                            style: const TextStyle(
                              color: AppColors.grayscaleLabel,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                presenceRecapEntitiesList[index].time,
                                style: TextStyle(
                                  color:
                                      presenceRecapEntitiesList[index].status ==
                                              'Hadir'
                                          ? AppColors.stateSuccessBase
                                          : AppColors.stateErrorBase,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                presenceRecapEntitiesList[index].status,
                                style: const TextStyle(
                                  color: AppColors.grayscaleLabel,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y, this.pointColorMapper);

  final String x;
  final double y;
  final Color? pointColorMapper;
}
