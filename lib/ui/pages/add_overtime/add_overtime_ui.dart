import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/common/constant/text_style_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';

class AddOvertimePage extends StatelessWidget {
  const AddOvertimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithCross(
        title: StringConstant.addOvertimeTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              StringConstant.addOvertimeDate,
              style: StyleConstant.formLabel,
            ),
            SizedBox(
              height: 8.0,
            ),
            FleetimeDatePickerReuseable(
              name: 'date',
              validator: null,
              hintText: 'Pilih Tanggal',
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(
              StringConstant.addOvertimeStartTime,
              style: StyleConstant.formLabel,
            ),
            SizedBox(
              height: 8.0,
            ),
            FleetimeTimePickerReuseable(
              name: 'start_time',
              validator: null,
            ),
            Text(
              StringConstant.addOvertimeEndTime,
              style: StyleConstant.formLabel,
            ),
            Text(
              StringConstant.addOvertimeDescription,
              style: StyleConstant.formLabel,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: 'Kirim',
        onPressed: () {},
      ),
    );
  }
}
