import 'package:fleetime_hris/ui/pages/absent_maps/absent_maps_ui.dart';
import 'package:fleetime_hris/ui/pages/activity_recap/activity_recap.dart';
import 'package:fleetime_hris/ui/pages/add_activity/add_activity_ui.dart';
import 'package:fleetime_hris/ui/pages/add_overtime/add_overtime_ui.dart';
import 'package:fleetime_hris/ui/pages/add_permission/add_permission_ui.dart';
import 'package:fleetime_hris/ui/pages/add_reimbursement/add_reimbursement_ui.dart';
import 'package:fleetime_hris/ui/pages/add_shift/add_shift_ui.dart';
import 'package:fleetime_hris/ui/pages/add_visit/add_visit_ui.dart';
import 'package:fleetime_hris/ui/pages/add_visit/add_visit_ui_new.dart';
import 'package:fleetime_hris/ui/pages/home/home_ui.dart';
import 'package:fleetime_hris/ui/pages/news_announcement/news_announcement_ui.dart';
import 'package:fleetime_hris/ui/pages/overtime_recap/overtime_recap_ui.dart';
import 'package:fleetime_hris/ui/pages/permission_recap/permission_recap_ui.dart';
import 'package:fleetime_hris/ui/pages/presence/presence_ui.dart';
import 'package:fleetime_hris/ui/pages/presence_history/presence_history_ui.dart';
import 'package:fleetime_hris/ui/pages/presence_recap/presence_recap_ui.dart';
import 'package:fleetime_hris/ui/pages/profile/profile_ui.dart';
import 'package:fleetime_hris/ui/pages/reimbursement_recap/reimbursement_recap_ui.dart';
import 'package:fleetime_hris/ui/pages/salary_detail/salary_detail_ui.dart';
import 'package:fleetime_hris/ui/pages/salary_history/salary_history_ui.dart';
import 'package:fleetime_hris/ui/pages/shift_recap/shift_recap_ui.dart';
import 'package:fleetime_hris/ui/pages/success_visit/success_visit_ui.dart';
import 'package:fleetime_hris/ui/pages/visit/visit_ui.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/home_page': (context) => const HomePage(),
  '/visit_page': (context) => const VisitPage(),
  '/profile_page': (context) => const ProfilePage(),
  '/presence_page': (context) => const PresencePage(),
  '/add_activity': (context) => const AddActivityPage(),
  '/add_permission': (context) => const AddPermissionPage(),
  '/add_overtime': (context) => const AddOvertimePage(),
  '/add_shift': (context) => const AddShiftPage(),
  '/add_reimbursement': (context) => const AddReimbursementPage(),
  '/add_visit': (context) => const AddVisitPage(),
  '/add_visit_new': (context) => const AddVisitNewPage(),
  '/news_announcement': (context) => const NewsAnnouncementPage(),
  '/absent_map': (context) => const AbsentMapPage(),
  '/presence_history': (context) => const PresenceHistoryPage(),
  '/presence_recap': (context) => const PresenceRecapPage(),
  '/permission_recap': (context) => const PermissionRecapPage(),
  '/overtime_recap': (context) => const OvertimeRecapPage(),
  '/salary_recap': (context) => const SalaryHistoryPage(),
  '/salary_history_detail': (context) => const SalaryDetailPage(),
  '/shift_recap': (context) => const ShiftRecapPage(),
  '/activity_recap': (context) => const ActivityRecapPage(),
  '/reimbursement_recap': (context) => const ReimbursementRecapPage(),
  '/success_visit': (context) => const SuccessVisitPage(),
};
