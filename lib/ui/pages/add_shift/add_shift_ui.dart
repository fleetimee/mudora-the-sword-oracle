import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/common/constant/text_style_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddShiftPage extends StatelessWidget {
  const AddShiftPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormBuilderState> fbKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      appBar: AppBarWithCross(
        title: StringConstant.addShiftTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: fbKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Add Shift',
                style: StyleConstant.formLabel,
              ),
              SizedBox(
                height: 8,
              ),
              FleetimeDropdownReuseable(
                name: 'shift',
                items: [
                  DropdownMenuItem(
                    value: 'pagi',
                    child: Text('Pagi'),
                  ),
                  DropdownMenuItem(
                    value: 'siang',
                    child: Text('Siang'),
                  ),
                  DropdownMenuItem(
                    value: 'malam',
                    child: Text('Malam'),
                  ),
                ],
                hintText: StringConstant.addShiftSelector,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                StringConstant.addShiftDescription,
                style: StyleConstant.formLabel,
              ),
              SizedBox(
                height: 8,
              ),
              FleetimeTextFieldReuseable(
                name: 'keterangan',
                maxLines: 5,
                hintText: 'Keterangan',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: StringConstant.addShiftButton,
        onPressed: () {
          if (fbKey.currentState!.saveAndValidate()) {
            print(fbKey.currentState!.value);
          }
        },
      ),
    );
  }
}
