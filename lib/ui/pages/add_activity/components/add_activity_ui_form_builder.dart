import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddActivityForm extends StatelessWidget {
  const AddActivityForm({
    super.key,
    required GlobalKey<FormBuilderState> fbKey,
  }) : _fbKey = fbKey;

  final GlobalKey<FormBuilderState> _fbKey;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _fbKey,
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                StringConstant.addActivityTimeStartLabel,
                style: TextStyle(
                  color: AppColors.grayscaleLabel,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FleetimeDatePickerReuseable(
                name: 'jam_mulai',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: 'Jam mulai tidak boleh kosong',
                  ),
                ]),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                StringConstant.addActivityTimeEndLabel,
                style: TextStyle(
                  color: AppColors.grayscaleLabel,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FleetimeDatePickerReuseable(
                name: 'jam_selesai',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: 'Jam selesai tidak boleh kosong',
                  ),
                ]),
              ),
              const SizedBox(
                height: 32,
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
                StringConstant.addActivityDescription,
                style: TextStyle(
                  color: AppColors.grayscaleLabel,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FleetimeTextFieldReuseable(
                hintText: 'Keterangan',
                name: 'keterangan',
                maxLines: 5,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: 'Keterangan tidak boleh kosong',
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
