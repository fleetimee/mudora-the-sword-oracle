class ActivityRecapCardEntities {
  final String date;
  final String status;
  final String reason;
  final String time;
  final String startFrom;

  const ActivityRecapCardEntities({
    required this.date,
    required this.status,
    required this.reason,
    required this.time,
    required this.startFrom,
  });
}

final List<ActivityRecapCardEntities> activityRecapList = [
  const ActivityRecapCardEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Diterima',
    reason: 'Kunjungan Telkomsel Pekalongan',
    time: '12:00 - 15:00 ',
    startFrom: '2 Februari 2023',
  ),
  const ActivityRecapCardEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Diterima',
    reason: 'Kunjungan Teleperform',
    time: '12:00 - 15:00 ',
    startFrom: '2 Februari 2023',
  ),
  const ActivityRecapCardEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Diterima',
    reason: 'Kunjungan Merubeni',
    time: '12:00 - 15:00 ',
    startFrom: '2 Februari 2023',
  ),
  const ActivityRecapCardEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Diterima',
    reason: 'Acara Keluarga',
    time: '12:00 - 15:00 ',
    startFrom: '2 Februari 2023',
  ),
];
