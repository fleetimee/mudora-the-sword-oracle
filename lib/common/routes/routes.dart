import 'package:fleetime_hris/ui/pages/add_activity/add_activity_ui.dart';
import 'package:fleetime_hris/ui/pages/news_announcement/news_announcement_ui.dart';
import 'package:fleetime_hris/ui/pages/no_connection/no_connection_ui.dart';
import 'package:fleetime_hris/ui/pages/profile/profile_ui.dart';
import 'package:fleetime_hris/ui/pages/signin/signin_ui.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => const LoginPage(),
  NoConnectionPage.routeName: (context) => const NoConnectionPage(),
  ProfilePage.routeName: (context) => const ProfilePage(),
  NewsAnnouncementPage.routeName: (context) => const NewsAnnouncementPage(),
  AddActivityPage.routeName: (context) => const AddActivityPage(),
};
