class ShiftRecapEntities {
  final String date;
  final String status;
  final String shiftTime;

  ShiftRecapEntities({
    required this.date,
    required this.status,
    required this.shiftTime,
  });
}

final List<ShiftRecapEntities> shiftRecapEntitiesList = [
  ShiftRecapEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Diterima',
    shiftTime: 'Malam',
  ),
  ShiftRecapEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Ditolak',
    shiftTime: 'Pagi',
  ),
  ShiftRecapEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Ditolak',
    shiftTime: 'Malam',
  ),
  ShiftRecapEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Diterima',
    shiftTime: 'Pagi',
  ),
];
