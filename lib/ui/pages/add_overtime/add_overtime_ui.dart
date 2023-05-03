import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/common/constant/text_style_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddOvertimePage extends StatelessWidget {
  const AddOvertimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithCross(
        title: StringConstant.addOvertimeTitle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                StringConstant.addOvertimeDate,
                style: StyleConstant.formLabel,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const FleetimeDatePickerReuseable(
                name: 'date',
                validator: null,
                hintText: 'Pilih Tanggal',
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Text(
                StringConstant.addOvertimeStartTime,
                style: StyleConstant.formLabel,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const FleetimeTimePickerReuseable(
                name: 'start_time',
                validator: null,
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Text(
                StringConstant.addOvertimeEndTime,
                style: StyleConstant.formLabel,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const FleetimeTimePickerReuseable(
                name: 'end_time',
                validator: null,
              ),
              const SizedBox(
                height: 32.0,
              ),
              FleetimeImagePickerReuseable(
                name: 'foto',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: 'Foto tidak boleh kosong',
                  ),
                ]),
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Text(
                StringConstant.addOvertimeDescription,
                style: StyleConstant.formLabel,
              ),
              const SizedBox(
                height: 8.0,
              ),
              const FleetimeTextFieldReuseable(
                name: 'description',
                maxLines: 5,
                hintText: 'Masukkan Deskripsi',
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
