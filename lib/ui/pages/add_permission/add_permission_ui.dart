import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/common/constant/text_style_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';

class AddPermissionPage extends StatelessWidget {
  const AddPermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithCross(
        title: StringConstant.addPermissionTitle,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstant.addPermissionType,
                style: StyleConstant.formLabel,
              ),
              SizedBox(height: 8.0),
              FleetimeDropdownReuseable(
                name: 'izin',
                hintText: StringConstant.addPermissionTypeHint,
                items: [
                  DropdownMenuItem(
                    value: 'cuti',
                    child: Text('Cuti'),
                  ),
                  DropdownMenuItem(
                    value: 'sakit',
                    child: Text('Sakit'),
                  ),
                  DropdownMenuItem(
                    value: 'izin',
                    child: Text('Izin'),
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              Text(
                StringConstant.addPermissionDate,
                style: StyleConstant.formLabel,
              ),
              SizedBox(height: 8.0),
              FleetimeDatePickerReuseable(
                name: 'tanggal',
                hintText: StringConstant.addPermissionDateHint,
              ),
              SizedBox(height: 32.0),
              FleetimeImagePickerReuseable(
                name: 'foto',
              ),
              SizedBox(height: 32.0),
              Text(
                StringConstant.addPermissionDescription,
                style: StyleConstant.formLabel,
              ),
              SizedBox(height: 8.0),
              FleetimeTextFieldReuseable(
                name: 'keterangan',
                hintText: 'Keterangan',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: 'Kirim',
        onPressed: () {},
      ),
    );
  }
}
