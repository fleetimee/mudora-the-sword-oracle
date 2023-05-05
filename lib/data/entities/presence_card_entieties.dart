import 'package:fleetime_hris/common/constant/string_constant.dart';

class PresenceCardEntities {
  final String cardTitle;
  final String cardSubtitle;

  const PresenceCardEntities({
    required this.cardTitle,
    required this.cardSubtitle,
  });
}

final List<PresenceCardEntities> presenceCardEntities = [
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataPresenceRecap,
    cardSubtitle: StringConstant.presenceDataPresenceRecapHint,
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataPresenceHistory,
    cardSubtitle: StringConstant.presenceDataPresenceHistoryHint,
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataPermitRecap,
    cardSubtitle: StringConstant.presenceDataPermitRecapHint,
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataOvertimeRecap,
    cardSubtitle: StringConstant.presenceDataOvertimeRecapHint,
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataSalaryHistory,
    cardSubtitle: StringConstant.presenceDataSalaryHistoryHint,
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataShiftHistory,
    cardSubtitle: StringConstant.presenceDataShiftHistory,
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataActivityReport,
    cardSubtitle: StringConstant.presenceDataActivityReportHint,
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataReimbursement,
    cardSubtitle: StringConstant.presenceDataReimbursement,
  ),
];
