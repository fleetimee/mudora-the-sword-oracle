import 'package:fleetime_hris/common/constant/string_constant.dart';

class PresenceCardEntities {
  final String cardTitle;
  final String cardSubtitle;
  final String routeName;

  const PresenceCardEntities({
    required this.cardTitle,
    required this.cardSubtitle,
    required this.routeName,
  });
}

final List<PresenceCardEntities> presenceCardEntities = [
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataPresenceRecap,
    cardSubtitle: StringConstant.presenceDataPresenceRecapHint,
    routeName: '/presence_recap',
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataPresenceHistory,
    cardSubtitle: StringConstant.presenceDataPresenceHistoryHint,
    routeName: '/presence_history',
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataPermitRecap,
    cardSubtitle: StringConstant.presenceDataPermitRecapHint,
    routeName: '/permission_recap',
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataOvertimeRecap,
    cardSubtitle: StringConstant.presenceDataOvertimeRecapHint,
    routeName: '/overtime_recap',
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataSalaryHistory,
    cardSubtitle: StringConstant.presenceDataSalaryHistoryHint,
    routeName: '/salary_recap',
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataShiftHistory,
    cardSubtitle: StringConstant.presenceDataShiftHistory,
    routeName: '/shift_recap',
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataActivityReport,
    cardSubtitle: StringConstant.presenceDataActivityReportHint,
    routeName: '/activity_recap',
  ),
  const PresenceCardEntities(
    cardTitle: StringConstant.presenceDataReimbursement,
    cardSubtitle: StringConstant.presenceDataReimbursement,
    routeName: '/reimbursement_recap',
  ),
];
