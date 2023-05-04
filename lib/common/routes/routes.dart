import 'package:fleetime_hris/ui/pages/add_activity/add_activity_ui.dart';
import 'package:fleetime_hris/ui/pages/add_overtime/add_overtime_ui.dart';
import 'package:fleetime_hris/ui/pages/add_permission/add_permission_ui.dart';
import 'package:fleetime_hris/ui/pages/add_reimbursement/add_reimbursement_ui.dart';
import 'package:fleetime_hris/ui/pages/add_shift/add_shift_ui.dart';
import 'package:fleetime_hris/ui/pages/news_announcement/news_announcement_ui.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/add_activity': (context) => const AddActivityPage(),
  '/add_permission': (context) => const AddPermissionPage(),
  '/add_overtime': (context) => const AddOvertimePage(),
  '/add_shift': (context) => const AddShiftPage(),
  '/add_reimbursement': (context) => const AddReimbursementPage(),
  '/news_announcement': (context) => const NewsAnnouncementPage(),
};
