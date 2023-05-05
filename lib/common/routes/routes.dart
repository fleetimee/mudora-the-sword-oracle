import 'package:fleetime_hris/ui/pages/absent_maps/absent_maps_ui.dart';
import 'package:fleetime_hris/ui/pages/add_activity/add_activity_ui.dart';
import 'package:fleetime_hris/ui/pages/add_overtime/add_overtime_ui.dart';
import 'package:fleetime_hris/ui/pages/add_permission/add_permission_ui.dart';
import 'package:fleetime_hris/ui/pages/add_reimbursement/add_reimbursement_ui.dart';
import 'package:fleetime_hris/ui/pages/add_shift/add_shift_ui.dart';
import 'package:fleetime_hris/ui/pages/home/home_ui.dart';
import 'package:fleetime_hris/ui/pages/news_announcement/news_announcement_ui.dart';
import 'package:fleetime_hris/ui/pages/presence/presence_ui.dart';
import 'package:fleetime_hris/ui/pages/profile/profile_ui.dart';
import 'package:fleetime_hris/ui/pages/visit/visit_ui.dart';
import 'package:flutter/material.dart';

import '../../ui/pages/add_visit/add_visit_ui.dart';

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
  '/news_announcement': (context) => const NewsAnnouncementPage(),
  '/absent_map': (context) => const AbsentMapPage(),
};
