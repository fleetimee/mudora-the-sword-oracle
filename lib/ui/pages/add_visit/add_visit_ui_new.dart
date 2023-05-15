import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/common/constant/text_style_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddVisitNewPage extends StatelessWidget {
  const AddVisitNewPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormBuilderState> fbKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      appBar: AppBarWithCross(
        context: context,
        title: 'Visit Kerja Baru',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: fbKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pilih Client',
                  style: StyleConstant.formLabel,
                ),
                const SizedBox(
                  height: 8,
                ),
                FleetimeDropdownReuseable(
                  name: 'client',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Client tidak boleh kosong',
                    ),
                  ]),
                  hintText: 'Pilih Client',
                  items: const [
                    DropdownMenuItem(
                      value: 'Baru',
                      child: Text('Baru'),
                    ),
                    DropdownMenuItem(
                      value: 'Lama',
                      child: Text('Lama'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  StringConstant.addVisitDestination,
                  style: StyleConstant.formLabel,
                ),
                const SizedBox(
                  height: 8,
                ),
                FleetimeDropdownReuseable(
                  name: 'destination',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Tujuan tidak boleh kosong',
                    ),
                  ]),
                  hintText: 'Pilih Tujuan Visit',
                  items: const [
                    DropdownMenuItem(
                      value: 'Jakarta',
                      child: Text('Jakarta'),
                    ),
                    DropdownMenuItem(
                      value: 'Bandung',
                      child: Text('Bandung'),
                    ),
                    DropdownMenuItem(
                      value: 'Surabaya',
                      child: Text('Surabaya'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  StringConstant.addVisitLocation,
                  style: StyleConstant.formLabel,
                ),
                const SizedBox(
                  height: 8,
                ),
                FleetimeTextFieldReuseable(
                  name: 'location',
                  hintText: StringConstant.addVisitLocation,
                  maxLines: 1,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Lokasi tidak boleh kosong',
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  StringConstant.addVisitDate,
                  style: StyleConstant.formLabel,
                ),
                const SizedBox(
                  height: 8,
                ),
                FleetimeDatePickerReuseable(
                  name: 'date',
                  hintText: StringConstant.addVisitDate,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Tanggal tidak boleh kosong',
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 25,
                ),
                const FleetimeImagePickerReuseable(
                  name: 'image',
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Keterangan',
                  style: StyleConstant.formLabel,
                ),
                const SizedBox(
                  height: 8,
                ),
                FleetimeTextFieldReuseable(
                  name: 'description',
                  hintText: 'Keterangan',
                  maxLines: 5,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'Deskripsi tidak boleh kosong',
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: 'Check In Visit',
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
