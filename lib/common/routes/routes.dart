import 'package:fleetime_hris/ui/pages/no_connection/no_connection_ui.dart';
import 'package:fleetime_hris/ui/pages/signin/signin_ui.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => const LoginPage(),
  NoConnectionPage.routeName: (context) => const NoConnectionPage(),
};
