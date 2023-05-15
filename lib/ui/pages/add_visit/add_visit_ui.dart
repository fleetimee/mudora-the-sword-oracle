import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/pages/add_visit/components/add_visit_ui_add_form.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddVisitPage extends StatelessWidget {
  const AddVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormBuilderState> fbKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      appBar: AppBarWithCross(
        title: 'Visit Kerja Lama',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AddVisitForm(
            fbKey: fbKey,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: StringConstant.addVisitButton,
        onPressed: () {
          if (fbKey.currentState?.saveAndValidate(
                autoScrollWhenFocusOnInvalid: true,
              ) ??
              false) {
            debugPrint(fbKey.currentState?.value.toString());
          } else {
            debugPrint(fbKey.currentState?.value.toString());
            debugPrint('validation failed');
          }
        },
      ),
    );
  }
}
