import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/pages/add_activity/components/add_activity_ui_form_builder.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddActivityPage extends StatefulWidget {
  const AddActivityPage({super.key});

  @override
  State<AddActivityPage> createState() => _AddActivityPageState();
}

class _AddActivityPageState extends State<AddActivityPage> {
  // ignore: unused_field
  Time _time = Time(hour: 11, minute: 30, second: 20);
  bool iosStyle = true;

  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });
  }

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithCross(
        context: context,
        title: StringConstant.addActivityTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringConstant.addActivityDate,
              style: TextStyle(
                color: AppColors.grayscaleBody,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              StringConstant.addActivityName,
              style: TextStyle(
                color: AppColors.grayscaleTitle,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              StringConstant.addActivityDepartment,
              style: TextStyle(
                color: AppColors.grayscaleBody,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            AddActivityForm(
              fbKey: _fbKey,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: StringConstant.addActivityButton,
        onPressed: () {
          if (_fbKey.currentState?.saveAndValidate(
                autoScrollWhenFocusOnInvalid: true,
              ) ??
              false) {
            debugPrint(_fbKey.currentState?.value.toString());
          } else {
            debugPrint(_fbKey.currentState?.value.toString());
            debugPrint('validation failed');
          }
        },
      ),
    );
  }
}
