class ReimbursementRecapEntities {
  final String date;
  final String status;
  final String description;
  final String value;

  ReimbursementRecapEntities({
    required this.date,
    required this.status,
    required this.description,
    required this.value,
  });
}

final List<ReimbursementRecapEntities> reimbursementRecapEntitiesList = [
  ReimbursementRecapEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Diterima',
    description: 'Makan siang',
    value: 'Rp. 20.000',
  ),
  ReimbursementRecapEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Ditolak',
    description: 'Makan siang',
    value: 'Rp. 20.000',
  ),
  ReimbursementRecapEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Ditolak',
    description: 'Makan siang',
    value: 'Rp. 20.000',
  ),
  ReimbursementRecapEntities(
    date: 'Rabu, 29 Maret 2023',
    status: 'Diterima',
    description: 'Makan siang',
    value: 'Rp. 20.000',
  ),
];
